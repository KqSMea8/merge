.class public Lorg/osgi/framework/BundleException;
.super Ljava/lang/Exception;
.source "BundleException.java"


# instance fields
.field private transient throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/framework/BundleException;->throwable:Ljava/lang/Throwable;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    iput-object p2, p0, Lorg/osgi/framework/BundleException;->throwable:Ljava/lang/Throwable;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 25
    iput-object p1, p0, Lorg/osgi/framework/BundleException;->throwable:Ljava/lang/Throwable;

    .line 26
    return-void
.end method
