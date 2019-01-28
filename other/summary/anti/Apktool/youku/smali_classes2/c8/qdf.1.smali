.class public final Lc8/qdf;
.super Ljava/lang/Object;
.source "EventRegisterOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/rdf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private eventFilter:Lc8/odf;

.field private useWeakReference:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lc8/qdf;)Z
    .locals 1
    .param p0, "x0"    # Lc8/qdf;

    .prologue
    .line 24
    iget-boolean v0, p0, Lc8/qdf;->useWeakReference:Z

    return v0
.end method

.method static synthetic access$100(Lc8/qdf;)Lc8/odf;
    .locals 1
    .param p0, "x0"    # Lc8/qdf;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/qdf;->eventFilter:Lc8/odf;

    return-object v0
.end method


# virtual methods
.method public build()Lc8/rdf;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lc8/rdf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/rdf;-><init>(Lc8/qdf;Lc8/pdf;)V

    return-object v0
.end method

.method public withEventFilter(Lc8/odf;)Lc8/qdf;
    .locals 0
    .param p1, "val"    # Lc8/odf;

    .prologue
    .line 37
    iput-object p1, p0, Lc8/qdf;->eventFilter:Lc8/odf;

    .line 38
    return-object p0
.end method

.method public withUseWeakReference(Z)Lc8/qdf;
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lc8/qdf;->useWeakReference:Z

    .line 33
    return-object p0
.end method
