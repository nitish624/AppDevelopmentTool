# ProGuard rules for Android
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * implements android.os.Parcelable
-keepattributes Signature
-keepattributes *Annotation*

# Keep all classes that have being referenced through reflection
-keep class * { *; }

# For keeping any model classes that are serialized
-keepclassmembers class * {
   static final ** CREATOR;
}