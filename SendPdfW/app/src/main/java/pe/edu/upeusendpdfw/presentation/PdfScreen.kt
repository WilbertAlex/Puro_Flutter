package pe.edu.upeusendpdfw.presentation


import android.content.Context
import android.content.Intent
import android.net.Uri
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.core.content.FileProvider
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import java.io.File


@Composable
fun PdfScreen(navController: NavController, viewModel: PdfViewModel) {
    val context = LocalContext.current
    var text by remember { mutableStateOf("Generar PDF con Jetpack Compose.") }
    val scope = rememberCoroutineScope()

    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        OutlinedTextField(
            value = text,
            onValueChange = { text = it },
            label = { Text("Texto del PDF") },
            modifier = Modifier.fillMaxWidth()
        )

        Button(onClick = {
            scope.launch {
                val pdfFile = viewModel.generateAndSharePdf(context)
                val pdfUri = FileProvider.getUriForFile(
                    context,
                    "${context.packageName}.provider",
                    pdfFile
                )
                val encodedPath = Uri.encode(pdfUri.toString())
                navController.navigate("preview_pdf/$encodedPath")
            }
        }) {
            Text("Generar y Ver PDF")
        }

        Button(onClick = {
            scope.launch {
                val pdfFile = viewModel.generateAndSharePdf(context)
                sharePdf(context, pdfFile)
            }
        }) {
            Text("Generar y Share PDF")
        }
    }
}

private fun sharePdf(context: Context, file: File) {
    val uri: Uri = FileProvider.getUriForFile(
        context,
        "${context.packageName}.provider",
        file
    )

    val shareIntent = Intent(Intent.ACTION_SEND).apply {
        type = "application/pdf"
        putExtra(Intent.EXTRA_STREAM, uri)
        addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
    }

    context.startActivity(Intent.createChooser(shareIntent, "Compartir PDF con..."))
}