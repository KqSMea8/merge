.class public Lc8/qp;
.super Landroid/os/AsyncTask;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/rp;->generate(Lc8/tp;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Lc8/vp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/rp;

.field final synthetic val$listener:Lc8/tp;


# direct methods
.method constructor <init>(Lc8/rp;Lc8/tp;)V
    .locals 0
    .param p1, "this$0"    # Lc8/rp;

    .prologue
    .line 860
    iput-object p1, p0, Lc8/qp;->this$0:Lc8/rp;

    iput-object p2, p0, Lc8/qp;->val$listener:Lc8/tp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Lc8/vp;
    .locals 3
    .param p1, "params"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 864
    :try_start_0
    iget-object v1, p0, Lc8/qp;->this$0:Lc8/rp;

    invoke-virtual {v1}, Lc8/rp;->generate()Lc8/vp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 867
    :goto_0
    return-object v1

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Palette"

    const-string/jumbo v2, "Exception thrown during async generate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 867
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 860
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lc8/qp;->doInBackground([Landroid/graphics/Bitmap;)Lc8/vp;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lc8/vp;)V
    .locals 1
    .param p1, "colorExtractor"    # Lc8/vp;

    .prologue
    .line 873
    iget-object v0, p0, Lc8/qp;->val$listener:Lc8/tp;

    invoke-interface {v0, p1}, Lc8/tp;->onGenerated(Lc8/vp;)V

    .line 874
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 860
    check-cast p1, Lc8/vp;

    invoke-virtual {p0, p1}, Lc8/qp;->onPostExecute(Lc8/vp;)V

    return-void
.end method
