.class public Lcom/youku/phone/detail/cms/dto/ModulePageResult;
.super Lcom/youku/phone/detail/cms/dto/BaseDTO;
.source "ModulePageResult.java"


# instance fields
.field protected className:Ljava/lang/String;

.field private hasNext:Z

.field private modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ModuleDTO;",
            ">;"
        }
    .end annotation
.end field

.field private results:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/youku/phone/detail/cms/dto/BaseDTO;-><init>()V

    .line 12
    const-string/jumbo v0, "com.youku.haibao.client.common.ModulePageResult"

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/ModulePageResult;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ModuleDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ModulePageResult;->modules:Ljava/util/List;

    return-object v0
.end method

.method public getResults()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ModulePageResult;->results:Ljava/lang/String;

    return-object v0
.end method

.method public isHasNext()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/youku/phone/detail/cms/dto/ModulePageResult;->hasNext:Z

    return v0
.end method

.method public setHasNext(Z)V
    .locals 0
    .param p1, "hasNext"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/youku/phone/detail/cms/dto/ModulePageResult;->hasNext:Z

    .line 42
    return-void
.end method

.method public setModules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ModuleDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "modules":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/detail/cms/dto/ModuleDTO;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ModulePageResult;->modules:Ljava/util/List;

    .line 26
    return-void
.end method

.method public setResults(Ljava/lang/String;)V
    .locals 0
    .param p1, "results"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ModulePageResult;->results:Ljava/lang/String;

    .line 34
    return-void
.end method
