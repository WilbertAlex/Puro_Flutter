package pe.edu.upeusendpdfw.presentation

import android.content.Context
import androidx.lifecycle.ViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import pe.edu.upeusendpdfw.utils.PdfGenerator
import java.io.File


class PdfViewModel: ViewModel(){
    suspend fun generateAndSharePdf(context: Context): File = withContext(Dispatchers.IO) {
        PdfGenerator.generatePdf(
            context = context,
            content = "Este es un reporte generado desde Jetpack Compose.\nGracias por su atención.",
            items = listOf(
                Triple("Lapicero", "1.20", "3"),
                Triple("Cuaderno", "2.50", "1"),
                Triple("Borrador", "0.80", "5")
            ),
            signatureBitmap = null
        )
    }

}