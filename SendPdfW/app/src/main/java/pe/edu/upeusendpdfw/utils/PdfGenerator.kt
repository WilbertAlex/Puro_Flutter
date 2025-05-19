package pe.edu.upeusendpdfw.utils

import android.content.Context
import android.graphics.*
import android.graphics.pdf.PdfDocument
import android.os.Environment
import android.util.Log
import java.io.File
import java.io.FileOutputStream
import pe.edu.upeusendpdfw.R

object PdfGenerator {

    fun generatePdf(
        context: Context,
        content: String,
        items: List<Triple<String, String, String>>, // Producto, Precio, Cantidad
        signatureBitmap: Bitmap? = null // Firma opcional
    ): File {
        val document = PdfDocument()
        val pageInfo = PdfDocument.PageInfo.Builder(595, 842, 1).create()
        val page = document.startPage(pageInfo)
        val canvas = page.canvas

        // LOGO
        val logoBitmap = BitmapFactory.decodeResource(context.resources, R.drawable.logo)
        val scaledLogo = Bitmap.createScaledBitmap(logoBitmap, 80, 60, false)
        canvas.drawBitmap(scaledLogo, 40f, 20f, null)

        // TÍTULO
        val titlePaint = Paint().apply {
            typeface = Typeface.create(Typeface.DEFAULT, Typeface.BOLD)
            textSize = 20f
            color = Color.BLACK
        }
        canvas.drawText("Reporte Generado", 150f, 70f, titlePaint)

        // CONTENIDO
        val textPaint = Paint().apply {
            textSize = 14f
            color = Color.DKGRAY
        }
        val lines = content.split("\n")
        var y = 100f
        for (line in lines) {
            canvas.drawText(line, 40f, y, textPaint)
            y += 25f
        }

        // TABLA
        val headerPaint = Paint().apply {
            typeface = Typeface.create(Typeface.DEFAULT, Typeface.BOLD)
            color = Color.WHITE
            textSize = 14f
        }
        val cellPaint = Paint().apply { color = Color.GRAY }
        val rowPaint = Paint().apply {
            textSize = 12f
            color = Color.BLACK
        }

        // Cabecera
        canvas.drawRect(40f, y, 555f, y + 30f, cellPaint)
        canvas.drawText("Producto", 50f, y + 20f, headerPaint)
        canvas.drawText("Precio", 300f, y + 20f, headerPaint)
        canvas.drawText("Cantidad", 450f, y + 20f, headerPaint)
        y += 40f

        // Filas
        val rowHeight = 25f
        for ((name, price, qty) in items) {
            canvas.drawText(name, 50f, y, rowPaint)
            canvas.drawText(price, 300f, y, rowPaint)
            canvas.drawText(qty, 450f, y, rowPaint)
            y += rowHeight
        }

        // FIRMA
        signatureBitmap?.let {
            val scaledSig = Bitmap.createScaledBitmap(it, 200, 80, false)
            canvas.drawText("Firma:", 40f, y + 50f, textPaint)
            canvas.drawBitmap(scaledSig, 100f, y + 20f, null)
        }

        document.finishPage(page)

        // GUARDAR
        val downloadsDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS)
        val file = File(downloadsDir, "reporte_compose.pdf")

        try {
            FileOutputStream(file).use { out ->
                document.writeTo(out)
            }
            document.close()
            //Toast.makeText(context, "PDF guardado en Descargas", Toast.LENGTH_SHORT).show()
            //sharePdf(context, file)
        } catch (e: Exception) {
            Log.i("ERROR", "${e.message}")
            //Toast.makeText(context, "Error al crear PDF: ${e.message}", Toast.LENGTH_LONG).show()
        }
        return file
    }

    /*private fun sharePdf(context: Context, file: File) {
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
    }*/
}
