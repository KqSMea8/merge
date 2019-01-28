.class public final Lc8/nTh;
.super Lc8/oTh;
.source "UploadHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/pTh;->generateParams(Landroid/webkit/WebChromeClient$FileChooserParams;)Lc8/oTh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$params:Landroid/webkit/WebChromeClient$FileChooserParams;


# direct methods
.method constructor <init>(Landroid/webkit/WebChromeClient$FileChooserParams;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lc8/nTh;->val$params:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-direct {p0}, Lc8/oTh;-><init>()V

    return-void
.end method


# virtual methods
.method protected createIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lc8/nTh;->val$params:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getAcceptTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lc8/nTh;->val$params:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isCaptureEnabled()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lc8/nTh;->val$params:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->isCaptureEnabled()Z

    move-result v0

    return v0
.end method

.method protected isMultiple()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x1

    return v0
.end method
