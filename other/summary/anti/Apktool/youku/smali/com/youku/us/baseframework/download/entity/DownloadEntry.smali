.class public Lcom/youku/us/baseframework/download/entity/DownloadEntry;
.super Ljava/lang/Object;
.source "DownloadEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lc8/Hwd;
    tableName = "downloadentry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public currentLength:I
    .annotation runtime Lc8/lud;
    .end annotation
.end field

.field public downloadTime:J
    .annotation runtime Lc8/lud;
    .end annotation
.end field

.field public isSupportRange:Z
    .annotation runtime Lc8/lud;
    .end annotation
.end field

.field private localFilePath:Ljava/lang/String;
    .annotation runtime Lc8/lud;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lc8/lud;
    .end annotation
.end field

.field public outputPath:Ljava/lang/String;
    .annotation runtime Lc8/lud;
    .end annotation
.end field

.field public percent:I
    .annotation runtime Lc8/lud;
    .end annotation
.end field

.field public ranges:Ljava/util/HashMap;
    .annotation runtime Lc8/lud;
        dataType = .enum Lcom/j256/ormlite/field/DataType;->SERIALIZABLE:Lcom/j256/ormlite/field/DataType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;
    .annotation runtime Lc8/lud;
    .end annotation
.end field

.field public totalLength:I
    .annotation runtime Lc8/lud;
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lc8/lud;
        id = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->idle:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v0, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->idle:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v0, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 108
    iput-object p1, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 110
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->name:Ljava/lang/String;

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->localFilePath:Ljava/lang/String;

    invoke-static {v0}, Lc8/abo;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/cZn;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->localFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasOutputPath()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->outputPath:Ljava/lang/String;

    invoke-static {v1}, Lc8/abo;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->outputPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->currentLength:I

    .line 138
    iput v0, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->percent:I

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->ranges:Ljava/util/HashMap;

    .line 140
    sget-object v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->idle:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v0, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 141
    iget-object v0, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->name:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setLocalFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->localFilePath:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    invoke-virtual {v1}, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->currentLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->totalLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->percent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
