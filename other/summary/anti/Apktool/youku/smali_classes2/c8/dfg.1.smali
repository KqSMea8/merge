.class public Lc8/dfg;
.super Lc8/Cv;
.source "WXRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/efg;->setOnSmoothScrollEndListener(Lc8/Xeg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/efg;

.field final synthetic val$onSmoothScrollEndListener:Lc8/Xeg;


# direct methods
.method constructor <init>(Lc8/efg;Lc8/Xeg;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lc8/dfg;->this$0:Lc8/efg;

    iput-object p2, p0, Lc8/dfg;->val$onSmoothScrollEndListener:Lc8/Xeg;

    invoke-direct {p0}, Lc8/Cv;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lc8/Rv;I)V
    .locals 1
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "newState"    # I

    .prologue
    .line 145
    if-nez p2, :cond_0

    .line 146
    invoke-virtual {p1, p0}, Lc8/Rv;->removeOnScrollListener(Lc8/Cv;)V

    .line 147
    iget-object v0, p0, Lc8/dfg;->val$onSmoothScrollEndListener:Lc8/Xeg;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lc8/dfg;->val$onSmoothScrollEndListener:Lc8/Xeg;

    invoke-interface {v0}, Lc8/Xeg;->onStop()V

    .line 151
    :cond_0
    return-void
.end method
