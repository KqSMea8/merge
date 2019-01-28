.class public final Lc8/Bdb;
.super Lc8/xdb;
.source "FileCompositionLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/xdb",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final loadedListener:Lc8/xcb;

.field private final res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lc8/xcb;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "loadedListener"    # Lc8/xcb;

    .prologue
    .line 14
    invoke-direct {p0}, Lc8/xdb;-><init>()V

    .line 15
    iput-object p1, p0, Lc8/Bdb;->res:Landroid/content/res/Resources;

    .line 16
    iput-object p2, p0, Lc8/Bdb;->loadedListener:Lc8/xcb;

    .line 17
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/io/InputStream;)Lc8/kcb;
    .locals 2
    .param p1, "params"    # [Ljava/io/InputStream;

    .prologue
    .line 20
    iget-object v0, p0, Lc8/Bdb;->res:Landroid/content/res/Resources;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lc8/jcb;->fromInputStream(Landroid/content/res/Resources;Ljava/io/InputStream;)Lc8/kcb;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    check-cast p1, [Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lc8/Bdb;->doInBackground([Ljava/io/InputStream;)Lc8/kcb;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lc8/kcb;)V
    .locals 1
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/Bdb;->loadedListener:Lc8/xcb;

    invoke-interface {v0, p1}, Lc8/xcb;->onCompositionLoaded(Lc8/kcb;)V

    .line 25
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lc8/kcb;

    invoke-virtual {p0, p1}, Lc8/Bdb;->onPostExecute(Lc8/kcb;)V

    return-void
.end method
