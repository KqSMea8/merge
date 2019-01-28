.class public Lc8/Nxf;
.super Ljava/lang/Object;
.source "ModuleStrategy.java"


# instance fields
.field public final diskCachePriority:I

.field public final memoryCachePriority:I

.field public final name:Ljava/lang/String;

.field public final preloadWithSmall:Z

.field public final scaleFromLarge:Z

.field public final schedulePriority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "schedulePriority"    # I
    .param p3, "memoryCachePriority"    # I
    .param p4, "diskCachePriority"    # I
    .param p5, "preloadWithSmall"    # Z
    .param p6, "scaleFromLarge"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lc8/Nxf;->name:Ljava/lang/String;

    .line 30
    iput p2, p0, Lc8/Nxf;->schedulePriority:I

    .line 31
    iput p3, p0, Lc8/Nxf;->memoryCachePriority:I

    .line 32
    iput p4, p0, Lc8/Nxf;->diskCachePriority:I

    .line 33
    iput-boolean p5, p0, Lc8/Nxf;->preloadWithSmall:Z

    .line 34
    iput-boolean p6, p0, Lc8/Nxf;->scaleFromLarge:Z

    .line 35
    return-void
.end method
