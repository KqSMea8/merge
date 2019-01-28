.class public final Lc8/rdf;
.super Ljava/lang/Object;
.source "EventRegisterOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/pdf;,
        Lc8/qdf;
    }
.end annotation


# instance fields
.field private eventFilter:Lc8/odf;

.field private useWeakReference:Z


# direct methods
.method private constructor <init>(Lc8/qdf;)V
    .locals 1
    .param p1, "builder"    # Lc8/qdf;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lc8/qdf;->access$000(Lc8/qdf;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/rdf;->useWeakReference:Z

    .line 21
    invoke-static {p1}, Lc8/qdf;->access$100(Lc8/qdf;)Lc8/odf;

    move-result-object v0

    iput-object v0, p0, Lc8/rdf;->eventFilter:Lc8/odf;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lc8/qdf;Lc8/pdf;)V
    .locals 0
    .param p1, "x0"    # Lc8/qdf;
    .param p2, "x1"    # Lc8/pdf;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lc8/rdf;-><init>(Lc8/qdf;)V

    return-void
.end method


# virtual methods
.method public getEventFilter()Lc8/odf;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lc8/rdf;->eventFilter:Lc8/odf;

    return-object v0
.end method

.method public isUseWeakReference()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lc8/rdf;->useWeakReference:Z

    return v0
.end method
