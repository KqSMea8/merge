.class public final Lc8/ycf;
.super Ljava/lang/Object;
.source "RuntimeUtils.java"

# interfaces
.implements Lc8/ucf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zcf;->init(Landroid/content/Context;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public trace(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "typeID"    # Ljava/lang/String;
    .param p2, "detail"    # Ljava/lang/String;
    .param p3, "success"    # Z

    .prologue
    .line 39
    if-eqz p3, :cond_0

    .line 40
    const-string/jumbo v0, "Runtime"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Lc8/uVb;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string/jumbo v0, "Runtime"

    const-string/jumbo v1, "init"

    const/4 v2, -0x1

    .line 43
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v0, v1, v2, p2}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
