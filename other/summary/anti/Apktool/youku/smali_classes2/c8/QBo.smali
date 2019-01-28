.class public Lc8/QBo;
.super Lc8/eCo;
.source "DrawerEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UBo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field private hidden_header:I

.field private jump_info:Lc8/WBo;

.field private padding_top:Z

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/SBo;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private title_image:Lc8/RBo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Lc8/eCo;-><init>()V

    return-void
.end method


# virtual methods
.method public getJump_info()Lc8/WBo;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lc8/QBo;->jump_info:Lc8/WBo;

    return-object v0
.end method

.method public getTitle_image()Lc8/RBo;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lc8/QBo;->title_image:Lc8/RBo;

    return-object v0
.end method

.method public hidden_header()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 380
    iget v1, p0, Lc8/QBo;->hidden_header:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPadding_top()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lc8/QBo;->padding_top:Z

    return v0
.end method

.method public setHidden_header(I)V
    .locals 0
    .param p1, "hidden_header"    # I

    .prologue
    .line 339
    iput p1, p0, Lc8/QBo;->hidden_header:I

    .line 340
    return-void
.end method

.method public setJump_info(Lc8/WBo;)V
    .locals 0
    .param p1, "jump_info"    # Lc8/WBo;

    .prologue
    .line 368
    iput-object p1, p0, Lc8/QBo;->jump_info:Lc8/WBo;

    .line 369
    return-void
.end method

.method public setPadding_top(Z)V
    .locals 0
    .param p1, "padding_top"    # Z

    .prologue
    .line 372
    iput-boolean p1, p0, Lc8/QBo;->padding_top:Z

    .line 373
    return-void
.end method

.method public setTags(Lc8/AIb;)V
    .locals 3
    .param p1, "tags"    # Lc8/AIb;

    .prologue
    .line 356
    :try_start_0
    const-class v1, Lc8/SBo;

    invoke-static {v1}, Lc8/PBo;->newListType(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {}, Lc8/XIb;->getGlobalInstance()Lc8/XIb;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lc8/RJb;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc8/XIb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lc8/QBo;->tags:Ljava/util/List;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 343
    iput-object p1, p0, Lc8/QBo;->title:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setTitle_image(Lc8/RBo;)V
    .locals 0
    .param p1, "title_image"    # Lc8/RBo;

    .prologue
    .line 351
    iput-object p1, p0, Lc8/QBo;->title_image:Lc8/RBo;

    .line 352
    return-void
.end method

.method public tags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/SBo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lc8/QBo;->tags:Ljava/util/List;

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lc8/QBo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Header{hidden_header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/QBo;->hidden_header:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/QBo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title_image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/QBo;->title_image:Lc8/RBo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", padding_top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/QBo;->padding_top:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", jump_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/QBo;->jump_info:Lc8/WBo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/QBo;->tags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
