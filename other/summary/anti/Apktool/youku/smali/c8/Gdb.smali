.class public final Lc8/Gdb;
.super Lc8/xdb;
.source "JsonCompositionLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/xdb",
        "<",
        "Lorg/json/JSONObject;",
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
    .line 15
    invoke-direct {p0}, Lc8/xdb;-><init>()V

    .line 16
    iput-object p1, p0, Lc8/Gdb;->res:Landroid/content/res/Resources;

    .line 17
    iput-object p2, p0, Lc8/Gdb;->loadedListener:Lc8/xcb;

    .line 18
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lorg/json/JSONObject;)Lc8/kcb;
    .locals 2
    .param p1, "params"    # [Lorg/json/JSONObject;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/Gdb;->res:Landroid/content/res/Resources;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lc8/jcb;->fromJsonSync(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lc8/kcb;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    check-cast p1, [Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lc8/Gdb;->doInBackground([Lorg/json/JSONObject;)Lc8/kcb;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lc8/kcb;)V
    .locals 1
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/Gdb;->loadedListener:Lc8/xcb;

    invoke-interface {v0, p1}, Lc8/xcb;->onCompositionLoaded(Lc8/kcb;)V

    .line 26
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lc8/kcb;

    invoke-virtual {p0, p1}, Lc8/Gdb;->onPostExecute(Lc8/kcb;)V

    return-void
.end method
