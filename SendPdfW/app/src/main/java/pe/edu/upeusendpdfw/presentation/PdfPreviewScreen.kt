package pe.edu.upeusendpdfw.presentation

import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.pdf.PdfRenderer
import android.net.Uri
import android.os.ParcelFileDescriptor
import android.widget.Toast
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController

@Composable
fun PdfPreviewScreen(pdfUri: Uri, navController: NavController) {
    val context = LocalContext.current
    var pages by remember { mutableStateOf<List<Bitmap>>(emptyList()) }

    LaunchedEffect(Unit) {
        pages = loadPdfPages(context, pdfUri)
    }

    Column(modifier = Modifier.fillMaxSize().padding(top = 16.dp)
           ) {
        // Botón superior para regresar
        Button(
            onClick = { navController.popBackStack() },
            modifier = Modifier
                .fillMaxWidth()
                .padding(8.dp)
        ) {
            Text("Volver")
        }
        Spacer(modifier = Modifier.height(8.dp))
        LazyColumn(
            modifier = Modifier
                //.weight(1f)
                .padding(4.dp )
        ) {
            items(pages.size) { index ->
                Image(
                    bitmap = pages[index].asImageBitmap(),
                    contentDescription = "Page ${index + 1}",
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(600.dp)
                        .padding(bottom = 16.dp)
                )
            }


            item {
                Spacer(modifier = Modifier.height(16.dp))
                Button(
                    onClick = {
                        val shareIntent = Intent(Intent.ACTION_SEND).apply {
                            type = "application/pdf"
                            putExtra(Intent.EXTRA_STREAM, pdfUri)
                            addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
                        }
                        context.startActivity(
                            Intent.createChooser(shareIntent, "Compartir PDF con...")
                        )
                        Toast.makeText(
                            context,
                            "Menú de compartir abierto",
                            Toast.LENGTH_SHORT
                        ).show()
                    },
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(16.dp)
                ) {
                    Text("Compartir PDF")
                }
            }
        }
    }
}

fun loadPdfPages(context: Context, uri: Uri): List<Bitmap> {
    val parcelFileDescriptor = context.contentResolver.openFileDescriptor(uri, "r") ?: return emptyList()
    val fileDescriptor = parcelFileDescriptor.fileDescriptor
    val renderer = PdfRenderer(ParcelFileDescriptor.dup(fileDescriptor))

    val bitmaps = mutableListOf<Bitmap>()
    for (i in 0 until renderer.pageCount) {
        val page = renderer.openPage(i)
        val bitmap = Bitmap.createBitmap(page.width, page.height, Bitmap.Config.ARGB_8888)
        page.render(bitmap, null, null, PdfRenderer.Page.RENDER_MODE_FOR_DISPLAY)
        bitmaps.add(bitmap)
        page.close()
    }

    renderer.close()
    parcelFileDescriptor.close()

    return bitmaps
}

