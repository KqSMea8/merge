.class public Lc8/gef;
.super Lc8/Zdf;
.source "FileCache.java"


# annotations
.annotation runtime Lc8/Ydf;
    value = "file_cache"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/fef;
    }
.end annotation


# static fields
.field public static final SCHEMA:Lc8/bef;


# instance fields
.field public filename:Ljava/lang/String;
    .annotation runtime Lc8/Wdf;
        value = "filename"
    .end annotation
.end field

.field public hashCode:J
    .annotation runtime Lc8/Wdf;
        indexed = true
        value = "hash_code"
    .end annotation
.end field

.field public lastAccess:J
    .annotation runtime Lc8/Wdf;
        indexed = true
        value = "last_access"
    .end annotation
.end field

.field public size:J
    .annotation runtime Lc8/Wdf;
        value = "size"
    .end annotation
.end field

.field public tag:Ljava/lang/String;
    .annotation runtime Lc8/Wdf;
        value = "tag"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 301
    new-instance v0, Lc8/bef;

    const-class v1, Lc8/gef;

    invoke-direct {v0, v1}, Lc8/bef;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lc8/gef;->SCHEMA:Lc8/bef;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Lc8/Zdf;-><init>()V

    .line 303
    return-void
.end method

.method synthetic constructor <init>(Lc8/cef;)V
    .locals 0
    .param p1, "x0"    # Lc8/cef;

    .prologue
    .line 299
    invoke-direct {p0}, Lc8/gef;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FileEntry{hashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/gef;->hashCode:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/gef;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", filename=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/gef;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/gef;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastAccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/gef;->lastAccess:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
