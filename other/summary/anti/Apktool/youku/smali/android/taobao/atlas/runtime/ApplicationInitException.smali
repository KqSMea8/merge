.class public Landroid/taobao/atlas/runtime/ApplicationInitException;
.super Lorg/osgi/framework/BundleException;
.source "ApplicationInitException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lorg/osgi/framework/BundleException;-><init>(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Lorg/osgi/framework/BundleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lorg/osgi/framework/BundleException;-><init>(Ljava/lang/Throwable;)V

    .line 220
    return-void
.end method
