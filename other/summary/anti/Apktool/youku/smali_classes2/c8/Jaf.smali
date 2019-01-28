.class public final Lc8/Jaf;
.super Ljava/lang/Object;
.source "DViewEventPropertySetter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Kaf;->bindEventHandler(Landroid/view/View;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Lc8/daf;

.field final synthetic val$param:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lc8/daf;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lc8/Jaf;->val$handler:Lc8/daf;

    iput-object p2, p0, Lc8/Jaf;->val$param:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 89
    :try_start_0
    iget-object v1, p0, Lc8/Jaf;->val$handler:Lc8/daf;

    iget-object v2, p0, Lc8/Jaf;->val$param:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Lc8/daf;->handleEvent(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return v5

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "DinamicEventHandler"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "handle onlongclick event failed, handler="

    aput-object v4, v2, v3

    iget-object v3, p0, Lc8/Jaf;->val$handler:Lc8/daf;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v0, v2}, Lc8/taf;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_0
.end method
