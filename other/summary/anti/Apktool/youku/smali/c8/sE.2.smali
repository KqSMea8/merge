.class public Lc8/sE;
.super Ljava/lang/Object;
.source "WVAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PluginName"
.end annotation


# static fields
.field public static final API_BASE:Ljava/lang/String; = "Base"

.field public static final API_BLUETOOTH:Ljava/lang/String; = "WVBluetooth"

.field public static final API_CAMERA:Ljava/lang/String; = "WVCamera"

.field public static final API_CONTACTS:Ljava/lang/String; = "WVContacts"

.field public static final API_COOKIE:Ljava/lang/String; = "WVCookie"

.field public static final API_FILE:Ljava/lang/String; = "WVFile"

.field public static final API_LOCATION:Ljava/lang/String; = "WVLocation"

.field public static final API_MOTION:Ljava/lang/String; = "WVMotion"

.field public static final API_NATIVEDETECTOR:Ljava/lang/String; = "WVNativeDetector"

.field public static final API_Network:Ljava/lang/String; = "WVNetwork"

.field public static final API_Notification:Ljava/lang/String; = "WVNotification"

.field public static final API_REPORTER:Ljava/lang/String; = "WVReporter"

.field public static final API_SCREEN:Ljava/lang/String; = "WVScreen"

.field public static final API_STANDARDEVENTCENTER:Ljava/lang/String; = "WVStandardEventCenter"

.field public static final API_UI:Ljava/lang/String; = "WVUI"

.field public static final API_UIACTIONSHEET:Ljava/lang/String; = "WVUIActionSheet"

.field public static final API_UIDIALOG:Ljava/lang/String; = "WVUIDialog"

.field public static final API_UITOAST:Ljava/lang/String; = "WVUIToast"


# instance fields
.field final synthetic this$0:Lc8/tE;


# direct methods
.method public constructor <init>(Lc8/tE;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lc8/sE;->this$0:Lc8/tE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
