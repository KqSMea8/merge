.class public abstract Lc8/LWb;
.super Ljava/lang/Object;
.source "Handler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/KWb;,
        Lc8/JWb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lc8/RWb;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final packetHandlerDefine:Lc8/IWb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/IWb",
            "<",
            "Lc8/KWb",
            "<TT;TF;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    .local p0, "this":Lc8/LWb;, "Lcom/alibaba/mtl/godeye/control/Handler<TT;TF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lc8/IWb;

    invoke-direct {v0}, Lc8/IWb;-><init>()V

    iput-object v0, p0, Lc8/LWb;->packetHandlerDefine:Lc8/IWb;

    .line 21
    return-void
.end method


# virtual methods
.method protected abstract afterProcess(Lc8/RWb;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract beforeProcess(Lc8/RWb;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract defaultProcessPacket(Lc8/RWb;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract onAfterProcessException(Lc8/RWb;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract onBeforeProcessException(Lc8/RWb;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract onProcessException(Lc8/RWb;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method

.method public process(Lc8/RWb;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lc8/LWb;, "Lcom/alibaba/mtl/godeye/control/Handler<TT;TF;>;"
    .local p1, "packet":Lc8/RWb;, "TT;"
    if-nez p1, :cond_0

    .line 54
    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "packet"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 58
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lc8/LWb;->beforeProcess(Lc8/RWb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    const-string/jumbo v7, "commandSet"

    invoke-interface {p1, v7}, Lc8/RWb;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 68
    .local v5, "objCommandSet":Ljava/lang/Object;
    if-nez v5, :cond_1

    .line 69
    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "commandSet"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 59
    .end local v5    # "objCommandSet":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0, p1, v2}, Lc8/LWb;->onBeforeProcessException(Lc8/RWb;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 62
    :catch_1
    move-exception v3

    .line 63
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v5    # "objCommandSet":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v7, "command"

    invoke-interface {p1, v7}, Lc8/RWb;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 73
    .local v4, "objCommand":Ljava/lang/Object;
    if-nez v4, :cond_2

    .line 74
    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "command"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 78
    :cond_2
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_3

    .line 79
    check-cast v5, Ljava/lang/Integer;

    .end local v5    # "objCommandSet":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 91
    .local v1, "commandSet":I
    :goto_1
    instance-of v7, v4, Ljava/lang/Integer;

    if-eqz v7, :cond_5

    .line 92
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "objCommand":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 103
    .local v0, "command":I
    :goto_2
    iget-object v7, p0, Lc8/LWb;->packetHandlerDefine:Lc8/IWb;

    invoke-virtual {v7, v1, v0}, Lc8/IWb;->getValue(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/KWb;

    .line 104
    .local v6, "packetHandler":Lc8/KWb;, "Lcom/alibaba/mtl/godeye/control/Handler$PacketHandler<TT;TF;>;"
    if-eqz v6, :cond_7

    .line 106
    :try_start_2
    invoke-virtual {p0, v6, p1}, Lc8/LWb;->processPacket(Lc8/KWb;Lc8/RWb;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 116
    :goto_3
    :try_start_3
    invoke-virtual {p0, p1}, Lc8/LWb;->afterProcess(Lc8/RWb;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 131
    :goto_4
    return-void

    .line 80
    .end local v0    # "command":I
    .end local v1    # "commandSet":I
    .end local v6    # "packetHandler":Lc8/KWb;, "Lcom/alibaba/mtl/godeye/control/Handler$PacketHandler<TT;TF;>;"
    .restart local v4    # "objCommand":Ljava/lang/Object;
    .restart local v5    # "objCommandSet":Ljava/lang/Object;
    :cond_3
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 82
    :try_start_4
    check-cast v5, Ljava/lang/String;

    .end local v5    # "objCommandSet":Ljava/lang/Object;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v1

    .restart local v1    # "commandSet":I
    goto :goto_1

    .line 83
    .end local v1    # "commandSet":I
    :catch_2
    move-exception v2

    .line 84
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "commandSet"

    invoke-direct {v7, v8, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 87
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "objCommandSet":Ljava/lang/Object;
    :cond_4
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "commandSet not support "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 93
    .end local v5    # "objCommandSet":Ljava/lang/Object;
    .restart local v1    # "commandSet":I
    :cond_5
    instance-of v7, v4, Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 95
    :try_start_5
    check-cast v4, Ljava/lang/String;

    .end local v4    # "objCommand":Ljava/lang/Object;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v0

    .restart local v0    # "command":I
    goto :goto_2

    .line 96
    .end local v0    # "command":I
    :catch_3
    move-exception v2

    .line 97
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "commandSet"

    invoke-direct {v7, v8, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 100
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "objCommand":Ljava/lang/Object;
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "command not support "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 107
    .end local v4    # "objCommand":Ljava/lang/Object;
    .restart local v0    # "command":I
    .restart local v6    # "packetHandler":Lc8/KWb;, "Lcom/alibaba/mtl/godeye/control/Handler$PacketHandler<TT;TF;>;"
    :catch_4
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {p0, p1, v2}, Lc8/LWb;->onProcessException(Lc8/RWb;Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_3

    .line 110
    :catch_5
    move-exception v3

    .line 111
    .restart local v3    # "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 117
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 119
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {p0, p1, v2}, Lc8/LWb;->onAfterProcessException(Lc8/RWb;Ljava/lang/Exception;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_4

    .line 120
    :catch_7
    move-exception v3

    .line 121
    .restart local v3    # "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 126
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_7
    :try_start_8
    invoke-virtual {p0, p1}, Lc8/LWb;->defaultProcessPacket(Lc8/RWb;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_4

    .line 127
    :catch_8
    move-exception v2

    .line 128
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4
.end method

.method protected processPacket(Lc8/KWb;Lc8/RWb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/KWb",
            "<TT;TF;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lc8/LWb;, "Lcom/alibaba/mtl/godeye/control/Handler<TT;TF;>;"
    .local p1, "handler":Lc8/KWb;, "Lcom/alibaba/mtl/godeye/control/Handler$PacketHandler<TT;TF;>;"
    .local p2, "packet":Lc8/RWb;, "TT;"
    invoke-virtual {p1, p2}, Lc8/KWb;->processPacket(Lc8/RWb;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public register(IILc8/KWb;)V
    .locals 2
    .param p1, "commandSet"    # I
    .param p2, "command"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lc8/KWb",
            "<TT;TF;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lc8/LWb;, "Lcom/alibaba/mtl/godeye/control/Handler<TT;TF;>;"
    .local p3, "packetHandler":Lc8/KWb;, "Lcom/alibaba/mtl/godeye/control/Handler$PacketHandler<TT;TF;>;"
    iget-object v0, p0, Lc8/LWb;->packetHandlerDefine:Lc8/IWb;

    invoke-static {p1, p2, p3}, Lc8/HWb;->build(IILjava/lang/Object;)Lc8/HWb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/IWb;->register(Lc8/HWb;)V

    .line 46
    return-void
.end method

.method public unRegister(IILc8/KWb;)V
    .locals 2
    .param p1, "commandSet"    # I
    .param p2, "command"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lc8/KWb",
            "<TT;TF;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lc8/LWb;, "Lcom/alibaba/mtl/godeye/control/Handler<TT;TF;>;"
    .local p3, "packetHandler":Lc8/KWb;, "Lcom/alibaba/mtl/godeye/control/Handler$PacketHandler<TT;TF;>;"
    iget-object v0, p0, Lc8/LWb;->packetHandlerDefine:Lc8/IWb;

    invoke-static {p1, p2, p3}, Lc8/HWb;->build(IILjava/lang/Object;)Lc8/HWb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/IWb;->unRegister(Lc8/HWb;)V

    .line 50
    return-void
.end method
