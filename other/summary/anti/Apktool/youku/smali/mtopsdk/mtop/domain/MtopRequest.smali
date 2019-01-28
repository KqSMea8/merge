.class public Lmtopsdk/mtop/domain/MtopRequest;
.super Ljava/lang/Object;
.source "MtopRequest.java"

# interfaces
.implements Lc8/dOp;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x61955599caeebacL


# instance fields
.field private apiName:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field public dataParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private needEcode:Z

.field private needSession:Z

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, "{}"

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopRequest;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopRequest;->apiName:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopRequest;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopRequest;->apiName:Ljava/lang/String;

    invoke-static {v0}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopRequest;->version:Ljava/lang/String;

    invoke-static {v0}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopRequest;->apiName:Ljava/lang/String;

    iget-object v1, p0, Lmtopsdk/mtop/domain/MtopRequest;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/yMp;->concatStr2LowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopRequest;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isLegalRequest()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopRequest;->apiName:Ljava/lang/String;

    invoke-static {v0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopRequest;->version:Ljava/lang/String;

    invoke-static {v0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopRequest;->data:Ljava/lang/String;

    invoke-static {v0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedEcode()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopRequest;->needEcode:Z

    return v0
.end method

.method public isNeedSession()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopRequest;->needSession:Z

    return v0
.end method

.method public setApiName(Ljava/lang/String;)V
    .locals 0
    .param p1, "apiName"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopRequest;->apiName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopRequest;->data:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setNeedEcode(Z)V
    .locals 0
    .param p1, "needEcode"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lmtopsdk/mtop/domain/MtopRequest;->needEcode:Z

    .line 108
    return-void
.end method

.method public setNeedSession(Z)V
    .locals 0
    .param p1, "needSession"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lmtopsdk/mtop/domain/MtopRequest;->needSession:Z

    .line 122
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopRequest;->version:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 137
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "MtopRequest [apiName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/domain/MtopRequest;->apiName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string/jumbo v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/domain/MtopRequest;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string/jumbo v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/domain/MtopRequest;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string/jumbo v1, ", needEcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmtopsdk/mtop/domain/MtopRequest;->needEcode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    const-string/jumbo v1, ", needSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmtopsdk/mtop/domain/MtopRequest;->needSession:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 142
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
