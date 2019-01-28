.class public interface abstract Lc8/kG;
.super Ljava/lang/Object;
.source "WVPackageAppConfigInterface.java"


# virtual methods
.method public abstract getGlobalConfig()Lc8/WG;
.end method

.method public abstract saveLocalConfig(Lc8/WG;)Z
.end method

.method public abstract updateGlobalConfig(ZLandroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lc8/WG;",
            ">;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/taobao/windvane/WindvaneException;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
