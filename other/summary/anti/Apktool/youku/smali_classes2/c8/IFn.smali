.class public Lc8/IFn;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/ui/activity/HomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "bubbleTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/ui/activity/HomePageActivity;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/youku/ui/activity/HomePageActivity;I)V
    .locals 1
    .param p2, "type1"    # I

    .prologue
    .line 864
    iput-object p1, p0, Lc8/IFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 862
    const/4 v0, -0x1

    iput v0, p0, Lc8/IFn;->type:I

    .line 865
    iput p2, p0, Lc8/IFn;->type:I

    .line 866
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 870
    invoke-static {}, Lc8/bzo;->checkClickEvent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 903
    :goto_0
    return v3

    .line 874
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lc8/HFn;

    invoke-direct {v2, p0}, Lc8/HFn;-><init>(Lc8/IFn;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 887
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 888
    iget v1, p0, Lc8/IFn;->type:I

    if-ne v1, v3, :cond_2

    .line 890
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 891
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2h0f.8166709.home.refresh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    const-string/jumbo v1, "page_bubble"

    const-string/jumbo v2, "home_refresh"

    invoke-static {v1, v2, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 902
    .end local v0    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    iget-object v1, p0, Lc8/IFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-virtual {v1}, Lcom/youku/ui/activity/HomePageActivity;->hideBubbleTip()V

    goto :goto_0

    .line 894
    :cond_2
    iget v1, p0, Lc8/IFn;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 896
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 897
    .restart local v0    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2h0f.8166709.home.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    const-string/jumbo v1, "ifrefresh"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    const-string/jumbo v1, "page_bnavigate"

    const-string/jumbo v2, "home_1"

    invoke-static {v1, v2, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1
.end method
