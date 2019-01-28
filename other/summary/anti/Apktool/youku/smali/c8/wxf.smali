.class public Lc8/wxf;
.super Lc8/txf;
.source "SuccPhenixEvent.java"


# instance fields
.field drawable:Landroid/graphics/drawable/BitmapDrawable;

.field private fromDisk:Z

.field fromMCache:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private fromSecondary:Z

.field immediate:Z

.field private intermediate:Z


# direct methods
.method public constructor <init>(Lc8/nxf;)V
    .locals 0
    .param p1, "ticket"    # Lc8/nxf;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lc8/txf;-><init>(Lc8/nxf;)V

    .line 27
    return-void
.end method


# virtual methods
.method public fromDisk(Z)V
    .locals 0
    .param p1, "fromDisk"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lc8/wxf;->fromDisk:Z

    .line 57
    return-void
.end method

.method public fromSecondary(Z)V
    .locals 0
    .param p1, "secondaryCache"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lc8/wxf;->fromSecondary:Z

    .line 61
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lc8/wxf;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public isFromDisk()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lc8/wxf;->fromDisk:Z

    return v0
.end method

.method public isFromMCache()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    iget-boolean v0, p0, Lc8/wxf;->fromMCache:Z

    return v0
.end method

.method public isFromSecondary()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lc8/wxf;->fromSecondary:Z

    return v0
.end method

.method public isImmediate()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lc8/wxf;->immediate:Z

    return v0
.end method

.method public isIntermediate()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lc8/wxf;->intermediate:Z

    return v0
.end method

.method public setDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/wxf;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 35
    return-void
.end method

.method public setFromMCache(Z)V
    .locals 0
    .param p1, "fromMCache"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    iput-boolean p1, p0, Lc8/wxf;->fromMCache:Z

    .line 45
    return-void
.end method

.method public setImmediate(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lc8/wxf;->immediate:Z

    .line 49
    return-void
.end method

.method public setIntermediate(Z)V
    .locals 0
    .param p1, "intermediate"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lc8/wxf;->intermediate:Z

    .line 53
    return-void
.end method
