.class public final Lcom/uc/webview/export/internal/setup/az;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->p:Z

    sput-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->q:Z

    .line 83
    return-void
.end method
