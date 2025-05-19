package pe.edu.upeusendpdfw

import android.content.Context
import android.net.Uri
import android.os.Bundle
import android.widget.Toast
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.navigation.NavType
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import androidx.navigation.navArgument
import com.google.accompanist.permissions.ExperimentalPermissionsApi
import com.google.accompanist.permissions.rememberMultiplePermissionsState
import pe.edu.upeusendpdfw.presentation.PdfPreviewScreen
import pe.edu.upeusendpdfw.presentation.PdfScreen
import pe.edu.upeusendpdfw.presentation.PdfViewModel
import pe.edu.upeusendpdfw.utils.isNetworkAvailable
import pe.edu.upeusendpdfw.ui.theme.SendPdfWTheme

class MainActivity : ComponentActivity() {
    @OptIn(ExperimentalPermissionsApi::class)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        val viewModel = PdfViewModel()
        setContent {
            val otorgarp = rememberMultiplePermissionsState(permissions =
                listOf(
                    android.Manifest.permission.ACCESS_NETWORK_STATE,
                    android.Manifest.permission.WRITE_EXTERNAL_STORAGE,
                    android.Manifest.permission.READ_EXTERNAL_STORAGE
                ))
            var context: Context=this@MainActivity
            LaunchedEffect (true){
                if (otorgarp.allPermissionsGranted){
                    Toast.makeText(context, "Permiso concedido",
                        Toast.LENGTH_SHORT).show()
                }else{if (otorgarp.shouldShowRationale){
                    Toast.makeText(context, "La aplicacion requiereeste permiso",
                        Toast.LENGTH_SHORT).show()
                }else{
                    Toast.makeText(context, "El permiso fue denegado", Toast.LENGTH_SHORT).show()
                }
                    otorgarp.launchMultiplePermissionRequest()
                }
                Toast.makeText(context,
                    "Con:${isNetworkAvailable(context)}",Toast.LENGTH_LONG
                ).show()
            }

            val navController = rememberNavController()
            NavHost(navController, startDestination = "form_screen") {
                composable("form_screen") {
                    PdfScreen(navController, viewModel = viewModel)
                }
                composable(
                    route = "preview_pdf/{pdfPath}",
                    arguments = listOf(navArgument("pdfPath") { type = NavType.StringType })
                ) { backStackEntry ->
                    val encodedPath = backStackEntry.arguments?.getString("pdfPath")
                    encodedPath?.let {
                        val uri = Uri.parse(Uri.decode(it)) // <- Importante: decodificas aquí
                        PdfPreviewScreen(pdfUri = uri, navController )
                    }
                }
            }
        }
    }
}

@Composable
fun Greeting(name: String, modifier: Modifier = Modifier) {
    Text(
        text = "Hello $name!",
        modifier = modifier
    )
}

@Preview(showBackground = true)
@Composable
fun GreetingPreview() {
    SendPdfWTheme {
        Greeting("Android")
    }
}