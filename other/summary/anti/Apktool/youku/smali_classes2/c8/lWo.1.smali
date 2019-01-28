.class public Lc8/lWo;
.super Lc8/odg;
.source "YKListComponent.java"


# static fields
.field private static final EVENT_TYPE_SCROLL_STATE_DRAGGING:Ljava/lang/String; = "scrollstatedragging"

.field private static final EVENT_TYPE_SCROLL_STATE_IDLE:Ljava/lang/String; = "scrollstateidle"

.field private static final EVENT_TYPE_SCROLL_STATE_SETTLING:Ljava/lang/String; = "scrollstatesettling"


# instance fields
.field private mEventDragging:Z

.field private mEventIdle:Z

.field private mEventSettling:Z

.field private mYKOnScrollListener:Lc8/Cv;


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 1
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "lazy"    # Z

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/odg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 30
    iput-boolean v0, p0, Lc8/lWo;->mEventIdle:Z

    iput-boolean v0, p0, Lc8/lWo;->mEventDragging:Z

    iput-boolean v0, p0, Lc8/lWo;->mEventSettling:Z

    .line 32
    new-instance v0, Lc8/kWo;

    invoke-direct {v0, p0}, Lc8/kWo;-><init>(Lc8/lWo;)V

    iput-object v0, p0, Lc8/lWo;->mYKOnScrollListener:Lc8/Cv;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lc8/lWo;)Z
    .locals 1
    .param p0, "x0"    # Lc8/lWo;

    .prologue
    .line 16
    iget-boolean v0, p0, Lc8/lWo;->mEventIdle:Z

    return v0
.end method

.method static synthetic access$100(Lc8/lWo;)Z
    .locals 1
    .param p0, "x0"    # Lc8/lWo;

    .prologue
    .line 16
    iget-boolean v0, p0, Lc8/lWo;->mEventDragging:Z

    return v0
.end method

.method static synthetic access$200(Lc8/lWo;)Z
    .locals 1
    .param p0, "x0"    # Lc8/lWo;

    .prologue
    .line 16
    iget-boolean v0, p0, Lc8/lWo;->mEventSettling:Z

    return v0
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 59
    invoke-super {p0, p1}, Lc8/odg;->addEvent(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v0, "scrollstateidle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iput-boolean v1, p0, Lc8/lWo;->mEventIdle:Z

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string/jumbo v0, "scrollstatedragging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iput-boolean v1, p0, Lc8/lWo;->mEventDragging:Z

    goto :goto_0

    .line 64
    :cond_2
    const-string/jumbo v0, "scrollstatesettling"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iput-boolean v1, p0, Lc8/lWo;->mEventSettling:Z

    goto :goto_0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lc8/lWo;->initComponentHostView(Landroid/content/Context;)Lc8/Ifg;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lc8/lWo;->initComponentHostView(Landroid/content/Context;)Lc8/Ifg;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lc8/Ifg;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-super {p0, p1}, Lc8/odg;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    .line 53
    .local v0, "recyclerView":Lc8/Ifg;
    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/efg;

    iget-object v2, p0, Lc8/lWo;->mYKOnScrollListener:Lc8/Cv;

    invoke-virtual {v1, v2}, Lc8/efg;->addOnScrollListener(Lc8/Cv;)V

    .line 54
    return-object v0
.end method
