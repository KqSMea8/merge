.class public Lc8/gbg;
.super Ljava/lang/Object;
.source "WXA.java"

# interfaces
.implements Lc8/qbg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hbg;->onHostViewInitialized(Lc8/qeg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hbg;


# direct methods
.method constructor <init>(Lc8/hbg;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lc8/gbg;->this$0:Lc8/hbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostViewClick()V
    .locals 5

    .prologue
    .line 50
    iget-object v3, p0, Lc8/gbg;->this$0:Lc8/hbg;

    invoke-virtual {v3}, Lc8/hbg;->getDomObject()Lc8/qYf;

    move-result-object v1

    .line 51
    .local v1, "domObject":Lc8/qYf;
    if-eqz v1, :cond_1

    .line 52
    invoke-interface {v1}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v0

    .line 53
    .local v0, "attr":Lc8/xYf;
    if-eqz v0, :cond_0

    const-string/jumbo v3, "href"

    invoke-virtual {v0, v3}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "href":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 54
    const/4 v3, 0x0

    iget-object v4, p0, Lc8/gbg;->this$0:Lc8/hbg;

    invoke-virtual {v4}, Lc8/hbg;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lc8/Kfg;->onClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .end local v0    # "attr":Lc8/xYf;
    .end local v2    # "href":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string/jumbo v3, "WXA"

    const-string/jumbo v4, "Property href is empty."

    invoke-static {v3, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
