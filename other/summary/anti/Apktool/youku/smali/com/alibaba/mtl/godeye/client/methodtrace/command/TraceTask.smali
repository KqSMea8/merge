.class public Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;
.super Lcom/alibaba/mtl/godeye/client/command/GodeyeBaseTask;
.source "TraceTask.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final KEY_BUFFER_SIZE:Ljava/lang/String; = "bufferSize"

.field private static final KEY_FILE_PATH:Ljava/lang/String; = "filePath"

.field private static final KEY_MAX_TRYS:Ljava/lang/String; = "maxTrys"

.field private static final KEY_PROGRESS:Ljava/lang/String; = "progress"

.field private static final KEY_SAMPLING_INTERVAL:Ljava/lang/String; = "samplingInterval"


# instance fields
.field private bufferSize:I

.field private filePath:Ljava/lang/String;

.field private maxTrys:I

.field private numTrys:I

.field private progress:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

.field private samplingInterval:I


# direct methods
.method public constructor <init>(Lc8/RWb;)V
    .locals 1
    .param p1, "packet"    # Lc8/RWb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/godeye/client/command/GodeyeBaseTask;-><init>(Lc8/RWb;)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->numTrys:I

    .line 53
    const-string/jumbo v0, "filePath"

    invoke-interface {p1, v0}, Lc8/RWb;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "filePath"

    invoke-interface {p1, v0}, Lc8/RWb;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->filePath:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "progress"

    invoke-interface {p1, v0}, Lc8/RWb;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "progress"

    invoke-interface {p1, v0}, Lc8/RWb;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->fromName(Ljava/lang/String;)Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->progress:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    .line 55
    const-string/jumbo v0, "maxTrys"

    invoke-interface {p1, v0}, Lc8/RWb;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "maxTrys"

    invoke-interface {p1, v0}, Lc8/RWb;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->setMaxTrys(I)V

    .line 56
    const-string/jumbo v0, "bufferSize"

    invoke-interface {p1, v0}, Lc8/RWb;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "bufferSize"

    invoke-interface {p1, v0}, Lc8/RWb;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->setBufferSize(I)V

    .line 57
    const-string/jumbo v0, "samplingInterval"

    invoke-interface {p1, v0}, Lc8/RWb;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "samplingInterval"

    invoke-interface {p1, v0}, Lc8/RWb;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_4
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->setSamplingInterval(I)V

    .line 58
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :cond_1
    sget-object v0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->NOT_STARTED:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    goto :goto_1

    .line 55
    :cond_2
    const/4 v0, 0x3

    goto :goto_2

    .line 56
    :cond_3
    const/high16 v0, 0x400000

    goto :goto_3

    .line 57
    :cond_4
    const/16 v0, 0x2710

    goto :goto_4
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->bufferSize:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxTrys()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->maxTrys:I

    return v0
.end method

.method public getNumTrys()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->numTrys:I

    return v0
.end method

.method public getProgress()Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->progress:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    return-object v0
.end method

.method public getSamplingInterval()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->samplingInterval:I

    return v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    invoke-static {p0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBufferSize(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->bufferSize:I

    .line 102
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->filePath:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setMaxTrys(I)V
    .locals 0
    .param p1, "maxTrys"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->maxTrys:I

    .line 94
    return-void
.end method

.method public setNumTrys(I)V
    .locals 0
    .param p1, "numTrys"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->numTrys:I

    .line 82
    return-void
.end method

.method public setProgress(Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;)V
    .locals 0
    .param p1, "progress"    # Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->progress:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    .line 66
    return-void
.end method

.method public setSamplingInterval(I)V
    .locals 0
    .param p1, "samplingInterval"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->samplingInterval:I

    .line 110
    return-void
.end method
