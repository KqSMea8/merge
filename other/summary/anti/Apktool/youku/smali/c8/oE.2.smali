.class public final Lc8/oE;
.super Landroid/app/Fragment;
.source "ScreenCaptureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/pE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BackFragment"
.end annotation


# instance fields
.field private final bmp:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 174
    iput-object p1, p0, Lc8/oE;->bmp:Landroid/graphics/Bitmap;

    .line 175
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 181
    const/16 v1, 0x611

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 184
    :try_start_0
    invoke-virtual {p0}, Lc8/oE;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lc8/oE;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lc8/pE;->access$000(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 185
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lc8/oE;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/pE;->access$100(Landroid/net/Uri;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
