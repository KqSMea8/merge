.class public final Lc8/yyb;
.super Ljava/lang/Object;
.source "BlurTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ayb;->asyncBlur(Landroid/graphics/Bitmap;ILc8/zyb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lc8/zyb;

.field final synthetic val$originalImage:Landroid/graphics/Bitmap;

.field final synthetic val$radius:I


# direct methods
.method constructor <init>(Lc8/zyb;Landroid/graphics/Bitmap;I)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lc8/yyb;->val$listener:Lc8/zyb;

    iput-object p2, p0, Lc8/yyb;->val$originalImage:Landroid/graphics/Bitmap;

    iput p3, p0, Lc8/yyb;->val$radius:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 306
    iget-object v1, p0, Lc8/yyb;->val$listener:Lc8/zyb;

    if-eqz v1, :cond_0

    .line 308
    :try_start_0
    iget-object v1, p0, Lc8/yyb;->val$originalImage:Landroid/graphics/Bitmap;

    iget v2, p0, Lc8/yyb;->val$radius:I

    invoke-static {v1, v2}, Lc8/Ayb;->blur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 309
    .local v0, "image":Landroid/graphics/Bitmap;
    new-instance v1, Lc8/wyb;

    invoke-direct {v1, p0, v0}, Lc8/wyb;-><init>(Lc8/yyb;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lc8/Ayb;->access$000(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v0    # "image":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v1

    new-instance v1, Lc8/xyb;

    invoke-direct {v1, p0}, Lc8/xyb;-><init>(Lc8/yyb;)V

    invoke-static {v1}, Lc8/Ayb;->access$000(Ljava/lang/Runnable;)V

    .line 322
    const-string/jumbo v1, "blur failed,return original image."

    invoke-static {v1}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
