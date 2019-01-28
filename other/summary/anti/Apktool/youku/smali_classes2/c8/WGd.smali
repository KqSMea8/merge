.class public Lc8/WGd;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 16
    const-string/jumbo v1, "android.os.SystemProperties"

    invoke-static {v1}, Lc8/XGd;->forName(Ljava/lang/String;)Lc8/XGd;

    move-result-object v1

    const-string/jumbo v2, "get"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    .line 17
    invoke-virtual {v1, v2, v3}, Lc8/XGd;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/aHd;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 18
    invoke-virtual {v1, v2}, Lc8/aHd;->invokeStatic([Ljava/lang/Object;)Lc8/bHd;

    move-result-object v0

    .line 19
    .local v0, "result":Lc8/bHd;, "Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult<Ljava/lang/String;>;"
    iget-boolean v1, v0, Lc8/bHd;->ok:Z

    if-eqz v1, :cond_0

    .line 20
    iget-object v1, v0, Lc8/bHd;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 22
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
