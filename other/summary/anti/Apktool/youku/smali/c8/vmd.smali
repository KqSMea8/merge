.class public abstract Lc8/vmd;
.super Lc8/Gmd;
.source "ExtendableMessageNano.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lc8/vmd",
        "<TM;>;>",
        "Lc8/Gmd;"
    }
.end annotation


# instance fields
.field protected unknownFieldData:Lc8/zmd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    .local p0, "this":Lc8/vmd;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    invoke-direct {p0}, Lc8/Gmd;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lc8/Gmd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lc8/vmd;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    invoke-virtual {p0}, Lc8/vmd;->clone()Lc8/vmd;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lc8/vmd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lc8/vmd;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    invoke-super {p0}, Lc8/Gmd;->clone()Lc8/Gmd;

    move-result-object v0

    check-cast v0, Lc8/vmd;

    .line 166
    .local v0, "cloned":Lc8/vmd;, "TM;"
    invoke-static {p0, v0}, Lc8/Bmd;->cloneUnknownFieldData(Lc8/vmd;Lc8/vmd;)V

    .line 167
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lc8/vmd;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    invoke-virtual {p0}, Lc8/vmd;->clone()Lc8/vmd;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 49
    .local p0, "this":Lc8/vmd;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    const/4 v2, 0x0

    .line 50
    .local v2, "size":I
    iget-object v3, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    if-eqz v3, :cond_0

    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    invoke-virtual {v3}, Lc8/zmd;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 52
    iget-object v3, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    invoke-virtual {v3, v1}, Lc8/zmd;->dataAt(I)Lc8/Amd;

    move-result-object v0

    .line 53
    .local v0, "field":Lc8/Amd;
    invoke-virtual {v0}, Lc8/Amd;->computeSerializedSize()I

    move-result v3

    add-int/2addr v2, v3

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "field":Lc8/Amd;
    .end local v1    # "i":I
    :cond_0
    return v2
.end method

.method public final getExtension(Lc8/ymd;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/ymd",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/vmd;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    .local p1, "extension":Lc8/ymd;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    const/4 v1, 0x0

    .line 86
    iget-object v2, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    if-nez v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v1

    .line 89
    :cond_1
    iget-object v2, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    iget v3, p1, Lc8/ymd;->tag:I

    invoke-static {v3}, Lc8/Jmd;->getTagFieldNumber(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lc8/zmd;->get(I)Lc8/Amd;

    move-result-object v0

    .line 90
    .local v0, "field":Lc8/Amd;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc8/Amd;->getValue(Lc8/ymd;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final hasExtension(Lc8/ymd;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/ymd",
            "<TM;*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/vmd;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    .local p1, "extension":Lc8/ymd;, "Lcom/google/protobuf/nano/Extension<TM;*>;"
    const/4 v1, 0x0

    .line 75
    iget-object v2, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    if-nez v2, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    iget-object v2, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    iget v3, p1, Lc8/ymd;->tag:I

    invoke-static {v3}, Lc8/Jmd;->getTagFieldNumber(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lc8/zmd;->get(I)Lc8/Amd;

    move-result-object v0

    .line 79
    .local v0, "field":Lc8/Amd;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final setExtension(Lc8/ymd;Ljava/lang/Object;)Lc8/vmd;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/ymd",
            "<TM;TT;>;TT;)TM;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lc8/vmd;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    .local p1, "extension":Lc8/ymd;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget v3, p1, Lc8/ymd;->tag:I

    invoke-static {v3}, Lc8/Jmd;->getTagFieldNumber(I)I

    move-result v1

    .line 98
    .local v1, "fieldNumber":I
    if-nez p2, :cond_1

    .line 99
    iget-object v3, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    if-eqz v3, :cond_0

    .line 100
    iget-object v3, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    invoke-virtual {v3, v1}, Lc8/zmd;->remove(I)V

    .line 101
    iget-object v3, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    invoke-virtual {v3}, Lc8/zmd;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    const/4 v3, 0x0

    iput-object v3, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    .line 121
    :cond_0
    :goto_0
    move-object v2, p0

    .local v2, "typedThis":Lc8/vmd;, "TM;"
    return-object p0

    .line 106
    .end local v2    # "typedThis":Lc8/vmd;, "TM;"
    :cond_1
    const/4 v0, 0x0

    .line 107
    .local v0, "field":Lc8/Amd;
    iget-object v3, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    if-nez v3, :cond_2

    .line 108
    new-instance v3, Lc8/zmd;

    invoke-direct {v3}, Lc8/zmd;-><init>()V

    iput-object v3, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    .line 112
    :goto_1
    if-nez v0, :cond_3

    .line 113
    iget-object v3, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    new-instance v4, Lc8/Amd;

    invoke-direct {v4, p1, p2}, Lc8/Amd;-><init>(Lc8/ymd;Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v4}, Lc8/zmd;->put(ILc8/Amd;)V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v3, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    invoke-virtual {v3, v1}, Lc8/zmd;->get(I)Lc8/Amd;

    move-result-object v0

    goto :goto_1

    .line 115
    :cond_3
    invoke-virtual {v0, p1, p2}, Lc8/Amd;->setValue(Lc8/ymd;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final storeUnknownField(Lc8/tmd;I)Z
    .locals 7
    .param p1, "input"    # Lc8/tmd;
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lc8/vmd;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    invoke-virtual {p1}, Lc8/tmd;->getPosition()I

    move-result v4

    .line 141
    .local v4, "startPos":I
    invoke-virtual {p1, p2}, Lc8/tmd;->skipField(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 142
    const/4 v6, 0x0

    .line 160
    :goto_0
    return v6

    .line 144
    :cond_0
    invoke-static {p2}, Lc8/Jmd;->getTagFieldNumber(I)I

    move-result v3

    .line 145
    .local v3, "fieldNumber":I
    invoke-virtual {p1}, Lc8/tmd;->getPosition()I

    move-result v1

    .line 146
    .local v1, "endPos":I
    sub-int v6, v1, v4

    invoke-virtual {p1, v4, v6}, Lc8/tmd;->getData(II)[B

    move-result-object v0

    .line 147
    .local v0, "bytes":[B
    new-instance v5, Lc8/Imd;

    invoke-direct {v5, p2, v0}, Lc8/Imd;-><init>(I[B)V

    .line 149
    .local v5, "unknownField":Lc8/Imd;
    const/4 v2, 0x0

    .line 150
    .local v2, "field":Lc8/Amd;
    iget-object v6, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    if-nez v6, :cond_2

    .line 151
    new-instance v6, Lc8/zmd;

    invoke-direct {v6}, Lc8/zmd;-><init>()V

    iput-object v6, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    .line 155
    :goto_1
    if-nez v2, :cond_1

    .line 156
    new-instance v2, Lc8/Amd;

    .end local v2    # "field":Lc8/Amd;
    invoke-direct {v2}, Lc8/Amd;-><init>()V

    .line 157
    .restart local v2    # "field":Lc8/Amd;
    iget-object v6, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    invoke-virtual {v6, v3, v2}, Lc8/zmd;->put(ILc8/Amd;)V

    .line 159
    :cond_1
    invoke-virtual {v2, v5}, Lc8/Amd;->addUnknownField(Lc8/Imd;)V

    .line 160
    const/4 v6, 0x1

    goto :goto_0

    .line 153
    :cond_2
    iget-object v6, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    invoke-virtual {v6, v3}, Lc8/zmd;->get(I)Lc8/Amd;

    move-result-object v2

    goto :goto_1
.end method

.method public writeTo(Lc8/umd;)V
    .locals 3
    .param p1, "output"    # Lc8/umd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lc8/vmd;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    iget-object v2, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    if-nez v2, :cond_1

    .line 68
    :cond_0
    return-void

    .line 64
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    invoke-virtual {v2}, Lc8/zmd;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 65
    iget-object v2, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    invoke-virtual {v2, v1}, Lc8/zmd;->dataAt(I)Lc8/Amd;

    move-result-object v0

    .line 66
    .local v0, "field":Lc8/Amd;
    invoke-virtual {v0, p1}, Lc8/Amd;->writeTo(Lc8/umd;)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
