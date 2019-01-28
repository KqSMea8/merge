.class public Lc8/xOm;
.super Ljava/lang/Object;
.source "CountlyWrapper.java"


# static fields
.field public static final TEST_MMA_CONFIG_HOST:Ljava/lang/String; = "http://val.atm.youku.com/sdkconfig_android.xml"

.field private static isInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    sget-boolean v0, Lc8/xOm;->isInitialized:Z

    if-eqz v0, :cond_1

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 18
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lc8/xOm;->isInitialized:Z

    .line 19
    sget-boolean v0, Lc8/KWc;->x86:Z

    if-nez v0, :cond_0

    .line 21
    invoke-static {}, Lc8/IQ;->sharedInstance()Lc8/IQ;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "http://val.atm.youku.com/sdkconfig_android.xml"

    invoke-virtual {v0, v1, v2}, Lc8/IQ;->init(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
