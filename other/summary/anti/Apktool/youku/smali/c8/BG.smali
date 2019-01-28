.class public Lc8/BG;
.super Ljava/lang/Object;
.source "InfoSnippet.java"


# instance fields
.field public count:D

.field public failCount:I

.field public lastAccessTime:J

.field public name:Ljava/lang/String;

.field public needReinstall:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/BG;->name:Ljava/lang/String;

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/BG;->lastAccessTime:J

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/BG;->count:D

    .line 49
    iput v2, p0, Lc8/BG;->failCount:I

    .line 54
    iput-boolean v2, p0, Lc8/BG;->needReinstall:Z

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJII)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "count"    # J
    .param p4, "lastAccessTime"    # J
    .param p6, "p"    # I
    .param p7, "failCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/BG;->name:Ljava/lang/String;

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/BG;->lastAccessTime:J

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/BG;->count:D

    .line 49
    iput v2, p0, Lc8/BG;->failCount:I

    .line 54
    iput-boolean v2, p0, Lc8/BG;->needReinstall:Z

    .line 16
    iput-object p1, p0, Lc8/BG;->name:Ljava/lang/String;

    .line 17
    long-to-double v0, p2

    iput-wide v0, p0, Lc8/BG;->count:D

    .line 18
    iput-wide p4, p0, Lc8/BG;->lastAccessTime:J

    .line 19
    iput p7, p0, Lc8/BG;->failCount:I

    .line 20
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "InfoSnippet{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/BG;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastAccessTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/BG;->lastAccessTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", needReinstall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/BG;->needReinstall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", failCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/BG;->failCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/BG;->count:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
