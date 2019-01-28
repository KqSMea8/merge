.class public Lc8/qWo;
.super Lc8/Cv;
.source "WXListComponentExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/sWo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/sWo;


# direct methods
.method constructor <init>(Lc8/sWo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/sWo;

    .prologue
    .line 51
    iput-object p1, p0, Lc8/qWo;->this$0:Lc8/sWo;

    invoke-direct {p0}, Lc8/Cv;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lc8/Rv;I)V
    .locals 2
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "newState"    # I

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lc8/Cv;->onScrollStateChanged(Lc8/Rv;I)V

    .line 55
    if-nez p2, :cond_1

    iget-object v0, p0, Lc8/qWo;->this$0:Lc8/sWo;

    invoke-static {v0}, Lc8/sWo;->access$000(Lc8/sWo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lc8/qWo;->this$0:Lc8/sWo;

    const-string/jumbo v1, "scrollstateidle"

    invoke-virtual {v0, v1}, Lc8/sWo;->fireEvent(Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lc8/qWo;->this$0:Lc8/sWo;

    invoke-static {v0}, Lc8/sWo;->access$100(Lc8/sWo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lc8/qWo;->this$0:Lc8/sWo;

    const-string/jumbo v1, "scrollstatedragging"

    invoke-virtual {v0, v1}, Lc8/sWo;->fireEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lc8/qWo;->this$0:Lc8/sWo;

    invoke-static {v0}, Lc8/sWo;->access$200(Lc8/sWo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lc8/qWo;->this$0:Lc8/sWo;

    const-string/jumbo v1, "scrollstatesettling"

    invoke-virtual {v0, v1}, Lc8/sWo;->fireEvent(Ljava/lang/String;)V

    goto :goto_0
.end method
