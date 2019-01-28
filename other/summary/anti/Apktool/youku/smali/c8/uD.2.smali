.class public Lc8/uD;
.super Lcom/uc/webview/export/extension/UCExtension$TextSelectionClient;
.source "WVUCWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/DD;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/DD;


# direct methods
.method constructor <init>(Lc8/DD;)V
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lc8/uD;->this$0:Lc8/DD;

    invoke-direct {p0}, Lcom/uc/webview/export/extension/UCExtension$TextSelectionClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchClicked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;

    .prologue
    .line 728
    const/4 v0, 0x0

    return v0
.end method

.method public onShareClicked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;

    .prologue
    .line 732
    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowSearchItem()Z
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowShareItem()Z
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x0

    return v0
.end method
