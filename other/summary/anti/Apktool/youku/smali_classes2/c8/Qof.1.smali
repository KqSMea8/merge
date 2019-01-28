.class public Lc8/Qof;
.super Ljava/lang/Object;
.source "AlibcDeviceProbeCompoment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Tof;->sendUMID()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Tof;


# direct methods
.method constructor <init>(Lc8/Tof;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lc8/Qof;->this$0:Lc8/Tof;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 254
    sget-object v2, Lc8/unf;->instance:Lc8/unf;

    iget-object v2, v2, Lc8/unf;->application:Landroid/app/Application;

    invoke-static {v2}, Lc8/Xof;->getUmid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "umid":Ljava/lang/String;
    const-string/jumbo v2, "DeviceProbe"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u53cd\u5c04\u83b7\u53d6\u51fa\u6765\u7684umid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    new-instance v1, Lc8/Yof;

    invoke-direct {v1, v0}, Lc8/Yof;-><init>(Ljava/lang/String;)V

    .line 259
    .local v1, "umidPoint":Lc8/Yof;
    invoke-virtual {v1}, Lc8/Yof;->send()V

    .line 261
    .end local v1    # "umidPoint":Lc8/Yof;
    :cond_0
    return-void
.end method
