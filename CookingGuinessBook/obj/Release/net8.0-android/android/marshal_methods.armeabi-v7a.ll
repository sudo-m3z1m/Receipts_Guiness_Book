; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [119 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [238 x i32] [
	i32 38948123, ; 0: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 42244203, ; 1: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 2: System.Threading.Thread => 0x28aa24d => 108
	i32 67008169, ; 3: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 4: Microsoft.Maui.Graphics.dll => 0x44bb714 => 47
	i32 83839681, ; 5: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 6: System.Runtime.InteropServices => 0x6ffddbc => 104
	i32 136584136, ; 7: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 8: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 59
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 77
	i32 205061960, ; 11: System.ComponentModel => 0xc38ff48 => 89
	i32 317674968, ; 12: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 13: Xamarin.AndroidX.Activity.dll => 0x13031348 => 55
	i32 321963286, ; 14: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 15: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 66
	i32 347068432, ; 16: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 52
	i32 379916513, ; 17: System.Threading.Thread.dll => 0x16a510e1 => 108
	i32 385762202, ; 18: System.Memory.dll => 0x16fe439a => 96
	i32 395744057, ; 19: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 408924917, ; 20: CookingGuinessBook => 0x185fb2f5 => 83
	i32 409257351, ; 21: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 22: System.Collections => 0x1a61054f => 86
	i32 450948140, ; 23: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 65
	i32 456227837, ; 24: System.Web.HttpUtility.dll => 0x1b317bfd => 110
	i32 465846621, ; 25: mscorlib => 0x1bc4415d => 113
	i32 469710990, ; 26: System.dll => 0x1bff388e => 112
	i32 489220957, ; 27: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 28: System.ObjectModel => 0x1dbae811 => 101
	i32 513247710, ; 29: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 42
	i32 538707440, ; 30: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 31: Microsoft.Extensions.Logging => 0x20216150 => 39
	i32 627609679, ; 32: Xamarin.AndroidX.CustomView => 0x2568904f => 63
	i32 627931235, ; 33: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 672442732, ; 34: System.Collections.Concurrent => 0x2814a96c => 84
	i32 748832960, ; 35: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 49
	i32 752882528, ; 36: SQLitePCLRaw.provider.dynamic_cdecl.dll => 0x2ce01360 => 53
	i32 759454413, ; 37: System.Net.Requests => 0x2d445acd => 99
	i32 775507847, ; 38: System.IO.Compression => 0x2e394f87 => 93
	i32 777317022, ; 39: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 40: Microsoft.Extensions.Options => 0x2f0980eb => 41
	i32 823281589, ; 41: System.Private.Uri.dll => 0x311247b5 => 102
	i32 830298997, ; 42: System.IO.Compression.Brotli => 0x317d5b75 => 92
	i32 869139383, ; 43: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 880668424, ; 44: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 882039868, ; 45: CookingGuinessBook.dll => 0x3492dc3c => 83
	i32 904024072, ; 46: System.ComponentModel.Primitives.dll => 0x35e25008 => 87
	i32 918734561, ; 47: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 952358589, ; 48: SQLitePCLRaw.nativelibrary => 0x38c3d6bd => 50
	i32 961460050, ; 49: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 967690846, ; 50: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 66
	i32 990727110, ; 51: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 52: System.Collections.dll => 0x3b2c715c => 86
	i32 1012816738, ; 53: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 76
	i32 1028951442, ; 54: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 38
	i32 1035644815, ; 55: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 56
	i32 1043950537, ; 56: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 57: System.Linq.Expressions.dll => 0x3e444eb4 => 94
	i32 1052210849, ; 58: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 68
	i32 1082857460, ; 59: System.ComponentModel.TypeConverter => 0x408b17f4 => 88
	i32 1084122840, ; 60: Xamarin.Kotlin.StdLib => 0x409e66d8 => 81
	i32 1098259244, ; 61: System => 0x41761b2c => 112
	i32 1108272742, ; 62: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 63: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 64: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 65: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 66: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 73
	i32 1260983243, ; 67: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1292207520, ; 68: SQLitePCLRaw.core.dll => 0x4d0585a0 => 51
	i32 1293217323, ; 69: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 64
	i32 1308624726, ; 70: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1324164729, ; 71: System.Linq => 0x4eed2679 => 95
	i32 1336711579, ; 72: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1373134921, ; 73: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 74: Xamarin.AndroidX.SavedState => 0x52114ed3 => 76
	i32 1406073936, ; 75: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 60
	i32 1430672901, ; 76: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 77: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 78: System.IO.Compression.dll => 0x57261233 => 93
	i32 1469204771, ; 79: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 57
	i32 1470490898, ; 80: Microsoft.Extensions.Primitives => 0x57a5e912 => 42
	i32 1480492111, ; 81: System.IO.Compression.Brotli.dll => 0x583e844f => 92
	i32 1526286932, ; 82: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 83: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 107
	i32 1622152042, ; 84: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 70
	i32 1624863272, ; 85: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 79
	i32 1636350590, ; 86: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 62
	i32 1639515021, ; 87: System.Net.Http.dll => 0x61b9038d => 97
	i32 1639986890, ; 88: System.Text.RegularExpressions => 0x61c036ca => 107
	i32 1657153582, ; 89: System.Runtime => 0x62c6282e => 105
	i32 1658251792, ; 90: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 80
	i32 1677501392, ; 91: System.Net.Primitives.dll => 0x63fca3d0 => 98
	i32 1679769178, ; 92: System.Security.Cryptography => 0x641f3e5a => 106
	i32 1711441057, ; 93: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 52
	i32 1729485958, ; 94: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 58
	i32 1743415430, ; 95: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1766324549, ; 96: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 77
	i32 1770582343, ; 97: Microsoft.Extensions.Logging.dll => 0x6988f147 => 39
	i32 1780572499, ; 98: Mono.Android.Runtime.dll => 0x6a216153 => 117
	i32 1782862114, ; 99: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 100: Xamarin.AndroidX.Fragment => 0x6a96652d => 65
	i32 1793755602, ; 101: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 102: Xamarin.AndroidX.Loader => 0x6bcd3296 => 70
	i32 1813058853, ; 103: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 81
	i32 1813201214, ; 104: Xamarin.Google.Android.Material => 0x6c13413e => 80
	i32 1818569960, ; 105: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 74
	i32 1828688058, ; 106: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 40
	i32 1853025655, ; 107: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 108: System.Linq.Expressions => 0x6ec71a65 => 94
	i32 1875935024, ; 109: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 110: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1910275211, ; 111: System.Collections.NonGeneric.dll => 0x71dc7c8b => 85
	i32 1953182387, ; 112: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1968388702, ; 113: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 35
	i32 2003115576, ; 114: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 115: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 68
	i32 2045470958, ; 116: System.Private.Xml => 0x79eb68ee => 103
	i32 2055257422, ; 117: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 67
	i32 2066184531, ; 118: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2079903147, ; 119: System.Runtime.dll => 0x7bf8cdab => 105
	i32 2090495875, ; 120: SQLitePCLRaw.provider.dynamic_cdecl => 0x7c9a6f83 => 53
	i32 2090596640, ; 121: System.Numerics.Vectors => 0x7c9bf920 => 100
	i32 2103459038, ; 122: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 54
	i32 2127167465, ; 123: System.Console => 0x7ec9ffe9 => 90
	i32 2159891885, ; 124: Microsoft.Maui => 0x80bd55ad => 45
	i32 2169148018, ; 125: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 126: Microsoft.Extensions.Options.dll => 0x820d22b3 => 41
	i32 2192057212, ; 127: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 40
	i32 2193016926, ; 128: System.ObjectModel.dll => 0x82b6c85e => 101
	i32 2201107256, ; 129: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 82
	i32 2201231467, ; 130: System.Net.Http => 0x8334206b => 97
	i32 2207618523, ; 131: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 132: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 36
	i32 2279755925, ; 133: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 75
	i32 2303942373, ; 134: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 135: System.Private.CoreLib.dll => 0x896b7878 => 115
	i32 2353062107, ; 136: System.Net.Primitives => 0x8c40e0db => 98
	i32 2366048013, ; 137: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 138: System.Xml.ReaderWriter.dll => 0x8d24e767 => 111
	i32 2371007202, ; 139: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 35
	i32 2395872292, ; 140: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 141: System.Web.HttpUtility => 0x8f24faee => 110
	i32 2427813419, ; 142: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 143: System.Console.dll => 0x912896e5 => 90
	i32 2465273461, ; 144: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 49
	i32 2471841756, ; 145: netstandard.dll => 0x93554fdc => 114
	i32 2475788418, ; 146: Java.Interop.dll => 0x93918882 => 116
	i32 2480646305, ; 147: Microsoft.Maui.Controls => 0x93dba8a1 => 43
	i32 2503351294, ; 148: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2550873716, ; 149: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2576534780, ; 150: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2593496499, ; 151: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 152: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 82
	i32 2617129537, ; 153: System.Private.Xml.dll => 0x9bfe3a41 => 103
	i32 2620871830, ; 154: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 62
	i32 2626831493, ; 155: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2732626843, ; 156: Xamarin.AndroidX.Activity => 0xa2e0939b => 55
	i32 2737747696, ; 157: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 57
	i32 2740698338, ; 158: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2752995522, ; 159: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2754540824, ; 160: SQLitePCLRaw.nativelibrary.dll => 0xa42ef518 => 50
	i32 2758225723, ; 161: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 44
	i32 2764765095, ; 162: Microsoft.Maui.dll => 0xa4caf7a7 => 45
	i32 2778768386, ; 163: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 78
	i32 2785988530, ; 164: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 165: Microsoft.Maui.Graphics => 0xa7008e0b => 47
	i32 2810250172, ; 166: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 60
	i32 2853208004, ; 167: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 78
	i32 2861189240, ; 168: Microsoft.Maui.Essentials => 0xaa8a4878 => 46
	i32 2905242038, ; 169: mscorlib.dll => 0xad2a79b6 => 113
	i32 2909740682, ; 170: System.Private.CoreLib => 0xad6f1e8a => 115
	i32 2916838712, ; 171: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 79
	i32 2919462931, ; 172: System.Numerics.Vectors.dll => 0xae037813 => 100
	i32 2959614098, ; 173: System.ComponentModel.dll => 0xb0682092 => 89
	i32 2978675010, ; 174: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 64
	i32 3038032645, ; 175: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3053864966, ; 176: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 177: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 71
	i32 3059408633, ; 178: Mono.Android.Runtime => 0xb65adef9 => 117
	i32 3059793426, ; 179: System.ComponentModel.Primitives => 0xb660be12 => 87
	i32 3178803400, ; 180: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 72
	i32 3220365878, ; 181: System.Threading => 0xbff2e236 => 109
	i32 3258312781, ; 182: Xamarin.AndroidX.CardView => 0xc235e84d => 58
	i32 3286872994, ; 183: SQLite-net.dll => 0xc3e9b3a2 => 48
	i32 3305363605, ; 184: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 185: System.Net.Requests.dll => 0xc5b097e4 => 99
	i32 3317135071, ; 186: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 63
	i32 3346324047, ; 187: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 73
	i32 3357674450, ; 188: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3360279109, ; 189: SQLitePCLRaw.core => 0xc849ca45 => 51
	i32 3362522851, ; 190: Xamarin.AndroidX.Core => 0xc86c06e3 => 61
	i32 3366347497, ; 191: Java.Interop => 0xc8a662e9 => 116
	i32 3374999561, ; 192: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 75
	i32 3381016424, ; 193: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 194: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 37
	i32 3430777524, ; 195: netstandard => 0xcc7d82b4 => 114
	i32 3458724246, ; 196: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3471940407, ; 197: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 88
	i32 3476120550, ; 198: Mono.Android => 0xcf3163e6 => 118
	i32 3484440000, ; 199: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3580758918, ; 200: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3592228221, ; 201: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3608519521, ; 202: System.Linq.dll => 0xd715a361 => 95
	i32 3641597786, ; 203: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 67
	i32 3643446276, ; 204: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 205: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 72
	i32 3657292374, ; 206: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 36
	i32 3672681054, ; 207: Mono.Android.dll => 0xdae8aa5e => 118
	i32 3724971120, ; 208: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 71
	i32 3748608112, ; 209: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 91
	i32 3751619990, ; 210: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3754567612, ; 211: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 54
	i32 3786282454, ; 212: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 59
	i32 3792276235, ; 213: System.Collections.NonGeneric => 0xe2098b0b => 85
	i32 3823082795, ; 214: System.Security.Cryptography.dll => 0xe3df9d2b => 106
	i32 3841636137, ; 215: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 38
	i32 3849253459, ; 216: System.Runtime.InteropServices.dll => 0xe56ef253 => 104
	i32 3876362041, ; 217: SQLite-net => 0xe70c9739 => 48
	i32 3896106733, ; 218: System.Collections.Concurrent.dll => 0xe839deed => 84
	i32 3896760992, ; 219: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 61
	i32 3920221145, ; 220: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3928044579, ; 221: System.Xml.ReaderWriter => 0xea213423 => 111
	i32 3931092270, ; 222: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 74
	i32 3955647286, ; 223: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 56
	i32 4025784931, ; 224: System.Memory => 0xeff49a63 => 96
	i32 4046471985, ; 225: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 44
	i32 4073602200, ; 226: System.Threading.dll => 0xf2ce3c98 => 109
	i32 4091086043, ; 227: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 228: Microsoft.Maui.Essentials.dll => 0xf40add04 => 46
	i32 4100113165, ; 229: System.Private.Uri => 0xf462c30d => 102
	i32 4103439459, ; 230: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 231: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 37
	i32 4150914736, ; 232: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4182413190, ; 233: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 69
	i32 4213026141, ; 234: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 91
	i32 4249188766, ; 235: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 236: Microsoft.Maui.Controls.dll => 0xfea12dee => 43
	i32 4292120959 ; 237: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 69
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [238 x i32] [
	i32 0, ; 0
	i32 9, ; 1
	i32 108, ; 2
	i32 33, ; 3
	i32 47, ; 4
	i32 17, ; 5
	i32 104, ; 6
	i32 32, ; 7
	i32 25, ; 8
	i32 59, ; 9
	i32 77, ; 10
	i32 89, ; 11
	i32 30, ; 12
	i32 55, ; 13
	i32 8, ; 14
	i32 66, ; 15
	i32 52, ; 16
	i32 108, ; 17
	i32 96, ; 18
	i32 34, ; 19
	i32 83, ; 20
	i32 28, ; 21
	i32 86, ; 22
	i32 65, ; 23
	i32 110, ; 24
	i32 113, ; 25
	i32 112, ; 26
	i32 6, ; 27
	i32 101, ; 28
	i32 42, ; 29
	i32 27, ; 30
	i32 39, ; 31
	i32 63, ; 32
	i32 19, ; 33
	i32 84, ; 34
	i32 49, ; 35
	i32 53, ; 36
	i32 99, ; 37
	i32 93, ; 38
	i32 25, ; 39
	i32 41, ; 40
	i32 102, ; 41
	i32 92, ; 42
	i32 10, ; 43
	i32 24, ; 44
	i32 83, ; 45
	i32 87, ; 46
	i32 21, ; 47
	i32 50, ; 48
	i32 14, ; 49
	i32 66, ; 50
	i32 23, ; 51
	i32 86, ; 52
	i32 76, ; 53
	i32 38, ; 54
	i32 56, ; 55
	i32 4, ; 56
	i32 94, ; 57
	i32 68, ; 58
	i32 88, ; 59
	i32 81, ; 60
	i32 112, ; 61
	i32 26, ; 62
	i32 20, ; 63
	i32 16, ; 64
	i32 22, ; 65
	i32 73, ; 66
	i32 2, ; 67
	i32 51, ; 68
	i32 64, ; 69
	i32 11, ; 70
	i32 95, ; 71
	i32 31, ; 72
	i32 32, ; 73
	i32 76, ; 74
	i32 60, ; 75
	i32 0, ; 76
	i32 6, ; 77
	i32 93, ; 78
	i32 57, ; 79
	i32 42, ; 80
	i32 92, ; 81
	i32 30, ; 82
	i32 107, ; 83
	i32 70, ; 84
	i32 79, ; 85
	i32 62, ; 86
	i32 97, ; 87
	i32 107, ; 88
	i32 105, ; 89
	i32 80, ; 90
	i32 98, ; 91
	i32 106, ; 92
	i32 52, ; 93
	i32 58, ; 94
	i32 1, ; 95
	i32 77, ; 96
	i32 39, ; 97
	i32 117, ; 98
	i32 17, ; 99
	i32 65, ; 100
	i32 9, ; 101
	i32 70, ; 102
	i32 81, ; 103
	i32 80, ; 104
	i32 74, ; 105
	i32 40, ; 106
	i32 26, ; 107
	i32 94, ; 108
	i32 8, ; 109
	i32 2, ; 110
	i32 85, ; 111
	i32 13, ; 112
	i32 35, ; 113
	i32 5, ; 114
	i32 68, ; 115
	i32 103, ; 116
	i32 67, ; 117
	i32 4, ; 118
	i32 105, ; 119
	i32 53, ; 120
	i32 100, ; 121
	i32 54, ; 122
	i32 90, ; 123
	i32 45, ; 124
	i32 12, ; 125
	i32 41, ; 126
	i32 40, ; 127
	i32 101, ; 128
	i32 82, ; 129
	i32 97, ; 130
	i32 14, ; 131
	i32 36, ; 132
	i32 75, ; 133
	i32 18, ; 134
	i32 115, ; 135
	i32 98, ; 136
	i32 12, ; 137
	i32 111, ; 138
	i32 35, ; 139
	i32 13, ; 140
	i32 110, ; 141
	i32 10, ; 142
	i32 90, ; 143
	i32 49, ; 144
	i32 114, ; 145
	i32 116, ; 146
	i32 43, ; 147
	i32 16, ; 148
	i32 11, ; 149
	i32 15, ; 150
	i32 20, ; 151
	i32 82, ; 152
	i32 103, ; 153
	i32 62, ; 154
	i32 15, ; 155
	i32 55, ; 156
	i32 57, ; 157
	i32 1, ; 158
	i32 21, ; 159
	i32 50, ; 160
	i32 44, ; 161
	i32 45, ; 162
	i32 78, ; 163
	i32 27, ; 164
	i32 47, ; 165
	i32 60, ; 166
	i32 78, ; 167
	i32 46, ; 168
	i32 113, ; 169
	i32 115, ; 170
	i32 79, ; 171
	i32 100, ; 172
	i32 89, ; 173
	i32 64, ; 174
	i32 34, ; 175
	i32 7, ; 176
	i32 71, ; 177
	i32 117, ; 178
	i32 87, ; 179
	i32 72, ; 180
	i32 109, ; 181
	i32 58, ; 182
	i32 48, ; 183
	i32 7, ; 184
	i32 99, ; 185
	i32 63, ; 186
	i32 73, ; 187
	i32 24, ; 188
	i32 51, ; 189
	i32 61, ; 190
	i32 116, ; 191
	i32 75, ; 192
	i32 3, ; 193
	i32 37, ; 194
	i32 114, ; 195
	i32 22, ; 196
	i32 88, ; 197
	i32 118, ; 198
	i32 23, ; 199
	i32 31, ; 200
	i32 33, ; 201
	i32 95, ; 202
	i32 67, ; 203
	i32 28, ; 204
	i32 72, ; 205
	i32 36, ; 206
	i32 118, ; 207
	i32 71, ; 208
	i32 91, ; 209
	i32 3, ; 210
	i32 54, ; 211
	i32 59, ; 212
	i32 85, ; 213
	i32 106, ; 214
	i32 38, ; 215
	i32 104, ; 216
	i32 48, ; 217
	i32 84, ; 218
	i32 61, ; 219
	i32 19, ; 220
	i32 111, ; 221
	i32 74, ; 222
	i32 56, ; 223
	i32 96, ; 224
	i32 44, ; 225
	i32 109, ; 226
	i32 5, ; 227
	i32 46, ; 228
	i32 102, ; 229
	i32 29, ; 230
	i32 37, ; 231
	i32 29, ; 232
	i32 69, ; 233
	i32 91, ; 234
	i32 18, ; 235
	i32 43, ; 236
	i32 69 ; 237
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
