; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [129 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [258 x i32] [
	i32 38948123, ; 0: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 48
	i32 42244203, ; 2: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 3: System.Threading.Thread => 0x28aa24d => 118
	i32 67008169, ; 4: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 5: Microsoft.Maui.Graphics.dll => 0x44bb714 => 47
	i32 83839681, ; 6: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 7: System.Runtime.InteropServices => 0x6ffddbc => 108
	i32 136584136, ; 8: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 9: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 165246403, ; 10: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 53
	i32 182336117, ; 11: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 71
	i32 205061960, ; 12: System.ComponentModel => 0xc38ff48 => 85
	i32 230752869, ; 13: Microsoft.CSharp.dll => 0xdc10265 => 78
	i32 246610117, ; 14: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 106
	i32 317674968, ; 15: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 16: Xamarin.AndroidX.Activity.dll => 0x13031348 => 49
	i32 321963286, ; 17: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 18: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 60
	i32 379916513, ; 19: System.Threading.Thread.dll => 0x16a510e1 => 118
	i32 385762202, ; 20: System.Memory.dll => 0x16fe439a => 96
	i32 395744057, ; 21: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 409257351, ; 22: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 23: System.Collections => 0x1a61054f => 82
	i32 450948140, ; 24: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 59
	i32 456227837, ; 25: System.Web.HttpUtility.dll => 0x1b317bfd => 120
	i32 459347974, ; 26: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 111
	i32 469710990, ; 27: System.dll => 0x1bff388e => 124
	i32 489220957, ; 28: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 29: System.ObjectModel => 0x1dbae811 => 101
	i32 513247710, ; 30: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 42
	i32 538707440, ; 31: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 32: Microsoft.Extensions.Logging => 0x20216150 => 39
	i32 627609679, ; 33: Xamarin.AndroidX.CustomView => 0x2568904f => 57
	i32 627931235, ; 34: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 35: System.Text.Encodings.Web.dll => 0x27787397 => 115
	i32 672442732, ; 36: System.Collections.Concurrent => 0x2814a96c => 79
	i32 690569205, ; 37: System.Xml.Linq.dll => 0x29293ff5 => 121
	i32 759454413, ; 38: System.Net.Requests => 0x2d445acd => 99
	i32 775507847, ; 39: System.IO.Compression => 0x2e394f87 => 93
	i32 777317022, ; 40: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 41: Microsoft.Extensions.Options => 0x2f0980eb => 41
	i32 804715423, ; 42: System.Data.Common => 0x2ff6fb9f => 87
	i32 823281589, ; 43: System.Private.Uri.dll => 0x311247b5 => 102
	i32 830298997, ; 44: System.IO.Compression.Brotli => 0x317d5b75 => 92
	i32 869139383, ; 45: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 880668424, ; 46: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 904024072, ; 47: System.ComponentModel.Primitives.dll => 0x35e25008 => 83
	i32 918734561, ; 48: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 955402788, ; 49: Newtonsoft.Json => 0x38f24a24 => 48
	i32 961460050, ; 50: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 967690846, ; 51: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 60
	i32 975874589, ; 52: System.Xml.XDocument => 0x3a2aaa1d => 123
	i32 990727110, ; 53: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 54: System.Collections.dll => 0x3b2c715c => 82
	i32 1012816738, ; 55: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 70
	i32 1019214401, ; 56: System.Drawing => 0x3cbffa41 => 91
	i32 1028951442, ; 57: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 38
	i32 1035644815, ; 58: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 50
	i32 1036536393, ; 59: System.Drawing.Primitives.dll => 0x3dc84a49 => 90
	i32 1043950537, ; 60: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 61: System.Linq.Expressions.dll => 0x3e444eb4 => 94
	i32 1052210849, ; 62: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 62
	i32 1082857460, ; 63: System.ComponentModel.TypeConverter => 0x408b17f4 => 84
	i32 1084122840, ; 64: Xamarin.Kotlin.StdLib => 0x409e66d8 => 75
	i32 1098259244, ; 65: System => 0x41761b2c => 124
	i32 1108272742, ; 66: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 67: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 68: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 69: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 70: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 67
	i32 1260983243, ; 71: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 72: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 58
	i32 1308624726, ; 73: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1324164729, ; 74: System.Linq => 0x4eed2679 => 95
	i32 1336711579, ; 75: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1373134921, ; 76: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 77: Xamarin.AndroidX.SavedState => 0x52114ed3 => 70
	i32 1406073936, ; 78: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 54
	i32 1408764838, ; 79: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 110
	i32 1430672901, ; 80: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 81: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 82: System.IO.Compression.dll => 0x57261233 => 93
	i32 1469204771, ; 83: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 51
	i32 1470490898, ; 84: Microsoft.Extensions.Primitives => 0x57a5e912 => 42
	i32 1480492111, ; 85: System.IO.Compression.Brotli.dll => 0x583e844f => 92
	i32 1526286932, ; 86: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 87: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 117
	i32 1622152042, ; 88: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 64
	i32 1624863272, ; 89: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 73
	i32 1636350590, ; 90: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 56
	i32 1639515021, ; 91: System.Net.Http.dll => 0x61b9038d => 97
	i32 1639986890, ; 92: System.Text.RegularExpressions => 0x61c036ca => 117
	i32 1657153582, ; 93: System.Runtime => 0x62c6282e => 112
	i32 1658251792, ; 94: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 74
	i32 1677501392, ; 95: System.Net.Primitives.dll => 0x63fca3d0 => 98
	i32 1679769178, ; 96: System.Security.Cryptography => 0x641f3e5a => 113
	i32 1729485958, ; 97: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 52
	i32 1743415430, ; 98: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 99: System.Diagnostics.TraceSource.dll => 0x69239124 => 89
	i32 1766324549, ; 100: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 71
	i32 1770582343, ; 101: Microsoft.Extensions.Logging.dll => 0x6988f147 => 39
	i32 1780572499, ; 102: Mono.Android.Runtime.dll => 0x6a216153 => 127
	i32 1782862114, ; 103: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 104: Xamarin.AndroidX.Fragment => 0x6a96652d => 59
	i32 1793755602, ; 105: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 106: Xamarin.AndroidX.Loader => 0x6bcd3296 => 64
	i32 1813058853, ; 107: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 75
	i32 1813201214, ; 108: Xamarin.Google.Android.Material => 0x6c13413e => 74
	i32 1818569960, ; 109: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 68
	i32 1824175904, ; 110: System.Text.Encoding.Extensions => 0x6cbab720 => 114
	i32 1824722060, ; 111: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 110
	i32 1828688058, ; 112: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 40
	i32 1853025655, ; 113: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 114: System.Linq.Expressions => 0x6ec71a65 => 94
	i32 1870277092, ; 115: System.Reflection.Primitives => 0x6f7a29e4 => 107
	i32 1875935024, ; 116: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 117: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1910275211, ; 118: System.Collections.NonGeneric.dll => 0x71dc7c8b => 80
	i32 1939592360, ; 119: System.Private.Xml.Linq => 0x739bd4a8 => 103
	i32 1953182387, ; 120: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1968388702, ; 121: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 35
	i32 2003115576, ; 122: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 123: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 62
	i32 2045470958, ; 124: System.Private.Xml => 0x79eb68ee => 104
	i32 2055257422, ; 125: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 61
	i32 2066184531, ; 126: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 127: System.Diagnostics.TraceSource => 0x7b6f419e => 89
	i32 2079903147, ; 128: System.Runtime.dll => 0x7bf8cdab => 112
	i32 2090596640, ; 129: System.Numerics.Vectors => 0x7c9bf920 => 100
	i32 2127167465, ; 130: System.Console => 0x7ec9ffe9 => 86
	i32 2142473426, ; 131: System.Collections.Specialized => 0x7fb38cd2 => 81
	i32 2159891885, ; 132: Microsoft.Maui => 0x80bd55ad => 45
	i32 2169148018, ; 133: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 134: Microsoft.Extensions.Options.dll => 0x820d22b3 => 41
	i32 2192057212, ; 135: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 40
	i32 2193016926, ; 136: System.ObjectModel.dll => 0x82b6c85e => 101
	i32 2201107256, ; 137: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 76
	i32 2201231467, ; 138: System.Net.Http => 0x8334206b => 97
	i32 2207618523, ; 139: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 140: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 36
	i32 2279755925, ; 141: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 69
	i32 2303942373, ; 142: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 143: System.Private.CoreLib.dll => 0x896b7878 => 125
	i32 2353062107, ; 144: System.Net.Primitives => 0x8c40e0db => 98
	i32 2366048013, ; 145: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 146: System.Xml.ReaderWriter.dll => 0x8d24e767 => 122
	i32 2371007202, ; 147: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 35
	i32 2395872292, ; 148: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 149: System.Web.HttpUtility => 0x8f24faee => 120
	i32 2427813419, ; 150: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 151: System.Console.dll => 0x912896e5 => 86
	i32 2475788418, ; 152: Java.Interop.dll => 0x93918882 => 126
	i32 2480646305, ; 153: Microsoft.Maui.Controls => 0x93dba8a1 => 43
	i32 2503351294, ; 154: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2538310050, ; 155: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 106
	i32 2550873716, ; 156: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 157: Microsoft.CSharp => 0x98ba5a04 => 78
	i32 2570120770, ; 158: System.Text.Encodings.Web => 0x9930ee42 => 115
	i32 2576534780, ; 159: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2585220780, ; 160: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 114
	i32 2593496499, ; 161: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 162: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 76
	i32 2617129537, ; 163: System.Private.Xml.dll => 0x9bfe3a41 => 104
	i32 2620871830, ; 164: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 56
	i32 2626831493, ; 165: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2664396074, ; 166: System.Xml.XDocument.dll => 0x9ecf752a => 123
	i32 2665622720, ; 167: System.Drawing.Primitives => 0x9ee22cc0 => 90
	i32 2676780864, ; 168: System.Data.Common.dll => 0x9f8c6f40 => 87
	i32 2724373263, ; 169: System.Runtime.Numerics.dll => 0xa262a30f => 109
	i32 2732626843, ; 170: Xamarin.AndroidX.Activity => 0xa2e0939b => 49
	i32 2737747696, ; 171: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 51
	i32 2740698338, ; 172: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2752995522, ; 173: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 174: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 44
	i32 2764765095, ; 175: Microsoft.Maui.dll => 0xa4caf7a7 => 45
	i32 2778768386, ; 176: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 72
	i32 2785988530, ; 177: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 178: Microsoft.Maui.Graphics => 0xa7008e0b => 47
	i32 2810250172, ; 179: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 54
	i32 2853208004, ; 180: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 72
	i32 2861189240, ; 181: Microsoft.Maui.Essentials => 0xaa8a4878 => 46
	i32 2909740682, ; 182: System.Private.CoreLib => 0xad6f1e8a => 125
	i32 2916838712, ; 183: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 73
	i32 2919462931, ; 184: System.Numerics.Vectors.dll => 0xae037813 => 100
	i32 2959614098, ; 185: System.ComponentModel.dll => 0xb0682092 => 85
	i32 2978675010, ; 186: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 58
	i32 3038032645, ; 187: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3053864966, ; 188: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 189: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 65
	i32 3059408633, ; 190: Mono.Android.Runtime => 0xb65adef9 => 127
	i32 3059793426, ; 191: System.ComponentModel.Primitives => 0xb660be12 => 83
	i32 3159123045, ; 192: System.Reflection.Primitives.dll => 0xbc4c6465 => 107
	i32 3178803400, ; 193: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 66
	i32 3220365878, ; 194: System.Threading => 0xbff2e236 => 119
	i32 3258312781, ; 195: Xamarin.AndroidX.CardView => 0xc235e84d => 52
	i32 3305363605, ; 196: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 197: System.Net.Requests.dll => 0xc5b097e4 => 99
	i32 3317135071, ; 198: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 57
	i32 3346324047, ; 199: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 67
	i32 3357674450, ; 200: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 201: System.Text.Json => 0xc82afec1 => 116
	i32 3362522851, ; 202: Xamarin.AndroidX.Core => 0xc86c06e3 => 55
	i32 3366347497, ; 203: Java.Interop => 0xc8a662e9 => 126
	i32 3374999561, ; 204: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 69
	i32 3381016424, ; 205: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 206: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 37
	i32 3451898196, ; 207: EmployeeData => 0xcdbfc954 => 77
	i32 3458724246, ; 208: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3471940407, ; 209: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 84
	i32 3476120550, ; 210: Mono.Android => 0xcf3163e6 => 128
	i32 3484440000, ; 211: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 212: System.Text.Json.dll => 0xcfbaacae => 116
	i32 3509114376, ; 213: System.Xml.Linq => 0xd128d608 => 121
	i32 3542760294, ; 214: EmployeeData.dll => 0xd32a3b66 => 77
	i32 3580758918, ; 215: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3592228221, ; 216: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3608519521, ; 217: System.Linq.dll => 0xd715a361 => 95
	i32 3641597786, ; 218: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 61
	i32 3643446276, ; 219: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 220: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 66
	i32 3657292374, ; 221: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 36
	i32 3672681054, ; 222: Mono.Android.dll => 0xdae8aa5e => 128
	i32 3724971120, ; 223: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 65
	i32 3748608112, ; 224: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 88
	i32 3751619990, ; 225: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3786282454, ; 226: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 53
	i32 3792276235, ; 227: System.Collections.NonGeneric => 0xe2098b0b => 80
	i32 3802395368, ; 228: System.Collections.Specialized.dll => 0xe2a3f2e8 => 81
	i32 3823082795, ; 229: System.Security.Cryptography.dll => 0xe3df9d2b => 113
	i32 3841636137, ; 230: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 38
	i32 3849253459, ; 231: System.Runtime.InteropServices.dll => 0xe56ef253 => 108
	i32 3896106733, ; 232: System.Collections.Concurrent.dll => 0xe839deed => 79
	i32 3896760992, ; 233: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 55
	i32 3920221145, ; 234: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3928044579, ; 235: System.Xml.ReaderWriter => 0xea213423 => 122
	i32 3931092270, ; 236: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 68
	i32 3955647286, ; 237: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 50
	i32 4025784931, ; 238: System.Memory => 0xeff49a63 => 96
	i32 4046471985, ; 239: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 44
	i32 4054681211, ; 240: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 105
	i32 4068434129, ; 241: System.Private.Xml.Linq.dll => 0xf27f60d1 => 103
	i32 4073602200, ; 242: System.Threading.dll => 0xf2ce3c98 => 119
	i32 4091086043, ; 243: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 244: Microsoft.Maui.Essentials.dll => 0xf40add04 => 46
	i32 4099507663, ; 245: System.Drawing.dll => 0xf45985cf => 91
	i32 4100113165, ; 246: System.Private.Uri => 0xf462c30d => 102
	i32 4103439459, ; 247: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 248: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 37
	i32 4147896353, ; 249: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 105
	i32 4150914736, ; 250: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4181436372, ; 251: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 111
	i32 4182413190, ; 252: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 63
	i32 4213026141, ; 253: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 88
	i32 4249188766, ; 254: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 255: Microsoft.Maui.Controls.dll => 0xfea12dee => 43
	i32 4274976490, ; 256: System.Runtime.Numerics => 0xfecef6ea => 109
	i32 4292120959 ; 257: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 63
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [258 x i32] [
	i32 0, ; 0
	i32 48, ; 1
	i32 9, ; 2
	i32 118, ; 3
	i32 33, ; 4
	i32 47, ; 5
	i32 17, ; 6
	i32 108, ; 7
	i32 32, ; 8
	i32 25, ; 9
	i32 53, ; 10
	i32 71, ; 11
	i32 85, ; 12
	i32 78, ; 13
	i32 106, ; 14
	i32 30, ; 15
	i32 49, ; 16
	i32 8, ; 17
	i32 60, ; 18
	i32 118, ; 19
	i32 96, ; 20
	i32 34, ; 21
	i32 28, ; 22
	i32 82, ; 23
	i32 59, ; 24
	i32 120, ; 25
	i32 111, ; 26
	i32 124, ; 27
	i32 6, ; 28
	i32 101, ; 29
	i32 42, ; 30
	i32 27, ; 31
	i32 39, ; 32
	i32 57, ; 33
	i32 19, ; 34
	i32 115, ; 35
	i32 79, ; 36
	i32 121, ; 37
	i32 99, ; 38
	i32 93, ; 39
	i32 25, ; 40
	i32 41, ; 41
	i32 87, ; 42
	i32 102, ; 43
	i32 92, ; 44
	i32 10, ; 45
	i32 24, ; 46
	i32 83, ; 47
	i32 21, ; 48
	i32 48, ; 49
	i32 14, ; 50
	i32 60, ; 51
	i32 123, ; 52
	i32 23, ; 53
	i32 82, ; 54
	i32 70, ; 55
	i32 91, ; 56
	i32 38, ; 57
	i32 50, ; 58
	i32 90, ; 59
	i32 4, ; 60
	i32 94, ; 61
	i32 62, ; 62
	i32 84, ; 63
	i32 75, ; 64
	i32 124, ; 65
	i32 26, ; 66
	i32 20, ; 67
	i32 16, ; 68
	i32 22, ; 69
	i32 67, ; 70
	i32 2, ; 71
	i32 58, ; 72
	i32 11, ; 73
	i32 95, ; 74
	i32 31, ; 75
	i32 32, ; 76
	i32 70, ; 77
	i32 54, ; 78
	i32 110, ; 79
	i32 0, ; 80
	i32 6, ; 81
	i32 93, ; 82
	i32 51, ; 83
	i32 42, ; 84
	i32 92, ; 85
	i32 30, ; 86
	i32 117, ; 87
	i32 64, ; 88
	i32 73, ; 89
	i32 56, ; 90
	i32 97, ; 91
	i32 117, ; 92
	i32 112, ; 93
	i32 74, ; 94
	i32 98, ; 95
	i32 113, ; 96
	i32 52, ; 97
	i32 1, ; 98
	i32 89, ; 99
	i32 71, ; 100
	i32 39, ; 101
	i32 127, ; 102
	i32 17, ; 103
	i32 59, ; 104
	i32 9, ; 105
	i32 64, ; 106
	i32 75, ; 107
	i32 74, ; 108
	i32 68, ; 109
	i32 114, ; 110
	i32 110, ; 111
	i32 40, ; 112
	i32 26, ; 113
	i32 94, ; 114
	i32 107, ; 115
	i32 8, ; 116
	i32 2, ; 117
	i32 80, ; 118
	i32 103, ; 119
	i32 13, ; 120
	i32 35, ; 121
	i32 5, ; 122
	i32 62, ; 123
	i32 104, ; 124
	i32 61, ; 125
	i32 4, ; 126
	i32 89, ; 127
	i32 112, ; 128
	i32 100, ; 129
	i32 86, ; 130
	i32 81, ; 131
	i32 45, ; 132
	i32 12, ; 133
	i32 41, ; 134
	i32 40, ; 135
	i32 101, ; 136
	i32 76, ; 137
	i32 97, ; 138
	i32 14, ; 139
	i32 36, ; 140
	i32 69, ; 141
	i32 18, ; 142
	i32 125, ; 143
	i32 98, ; 144
	i32 12, ; 145
	i32 122, ; 146
	i32 35, ; 147
	i32 13, ; 148
	i32 120, ; 149
	i32 10, ; 150
	i32 86, ; 151
	i32 126, ; 152
	i32 43, ; 153
	i32 16, ; 154
	i32 106, ; 155
	i32 11, ; 156
	i32 78, ; 157
	i32 115, ; 158
	i32 15, ; 159
	i32 114, ; 160
	i32 20, ; 161
	i32 76, ; 162
	i32 104, ; 163
	i32 56, ; 164
	i32 15, ; 165
	i32 123, ; 166
	i32 90, ; 167
	i32 87, ; 168
	i32 109, ; 169
	i32 49, ; 170
	i32 51, ; 171
	i32 1, ; 172
	i32 21, ; 173
	i32 44, ; 174
	i32 45, ; 175
	i32 72, ; 176
	i32 27, ; 177
	i32 47, ; 178
	i32 54, ; 179
	i32 72, ; 180
	i32 46, ; 181
	i32 125, ; 182
	i32 73, ; 183
	i32 100, ; 184
	i32 85, ; 185
	i32 58, ; 186
	i32 34, ; 187
	i32 7, ; 188
	i32 65, ; 189
	i32 127, ; 190
	i32 83, ; 191
	i32 107, ; 192
	i32 66, ; 193
	i32 119, ; 194
	i32 52, ; 195
	i32 7, ; 196
	i32 99, ; 197
	i32 57, ; 198
	i32 67, ; 199
	i32 24, ; 200
	i32 116, ; 201
	i32 55, ; 202
	i32 126, ; 203
	i32 69, ; 204
	i32 3, ; 205
	i32 37, ; 206
	i32 77, ; 207
	i32 22, ; 208
	i32 84, ; 209
	i32 128, ; 210
	i32 23, ; 211
	i32 116, ; 212
	i32 121, ; 213
	i32 77, ; 214
	i32 31, ; 215
	i32 33, ; 216
	i32 95, ; 217
	i32 61, ; 218
	i32 28, ; 219
	i32 66, ; 220
	i32 36, ; 221
	i32 128, ; 222
	i32 65, ; 223
	i32 88, ; 224
	i32 3, ; 225
	i32 53, ; 226
	i32 80, ; 227
	i32 81, ; 228
	i32 113, ; 229
	i32 38, ; 230
	i32 108, ; 231
	i32 79, ; 232
	i32 55, ; 233
	i32 19, ; 234
	i32 122, ; 235
	i32 68, ; 236
	i32 50, ; 237
	i32 96, ; 238
	i32 44, ; 239
	i32 105, ; 240
	i32 103, ; 241
	i32 119, ; 242
	i32 5, ; 243
	i32 46, ; 244
	i32 91, ; 245
	i32 102, ; 246
	i32 29, ; 247
	i32 37, ; 248
	i32 105, ; 249
	i32 29, ; 250
	i32 111, ; 251
	i32 63, ; 252
	i32 88, ; 253
	i32 18, ; 254
	i32 43, ; 255
	i32 109, ; 256
	i32 63 ; 257
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

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
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
