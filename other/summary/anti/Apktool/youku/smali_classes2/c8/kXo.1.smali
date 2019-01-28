.class public Lc8/kXo;
.super Ljava/lang/Object;
.source "Element.java"


# instance fields
.field private preclosed:Z

.field private theAtts:Lc8/iXo;

.field private theNext:Lc8/kXo;

.field private theType:Lc8/lXo;


# direct methods
.method public constructor <init>(Lc8/lXo;Z)V
    .locals 2
    .param p1, "type"    # Lc8/lXo;
    .param p2, "defaultAttributes"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lc8/kXo;->theType:Lc8/lXo;

    .line 39
    if-eqz p2, :cond_0

    new-instance v0, Lc8/iXo;

    invoke-virtual {p1}, Lc8/lXo;->atts()Lc8/iXo;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/iXo;-><init>(Lorg/xml/sax/Attributes;)V

    iput-object v0, p0, Lc8/kXo;->theAtts:Lc8/iXo;

    .line 41
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/kXo;->theNext:Lc8/kXo;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/kXo;->preclosed:Z

    .line 43
    return-void

    .line 40
    :cond_0
    new-instance v0, Lc8/iXo;

    invoke-direct {v0}, Lc8/iXo;-><init>()V

    iput-object v0, p0, Lc8/kXo;->theAtts:Lc8/iXo;

    goto :goto_0
.end method


# virtual methods
.method public anonymize()V
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lc8/kXo;->theAtts:Lc8/iXo;

    invoke-virtual {v1}, Lc8/iXo;->getLength()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 161
    iget-object v1, p0, Lc8/kXo;->theAtts:Lc8/iXo;

    invoke-virtual {v1, v0}, Lc8/iXo;->getType(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/kXo;->theAtts:Lc8/iXo;

    .line 162
    invoke-virtual {v1, v0}, Lc8/iXo;->getQName(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    :cond_0
    iget-object v1, p0, Lc8/kXo;->theAtts:Lc8/iXo;

    invoke-virtual {v1, v0}, Lc8/iXo;->removeAttribute(I)V

    .line 160
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 166
    :cond_2
    return-void
.end method

.method public atts()Lc8/iXo;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lc8/kXo;->theAtts:Lc8/iXo;

    return-object v0
.end method

.method public canContain(Lc8/kXo;)Z
    .locals 2
    .param p1, "other"    # Lc8/kXo;

    .prologue
    .line 138
    iget-object v0, p0, Lc8/kXo;->theType:Lc8/lXo;

    iget-object v1, p1, Lc8/kXo;->theType:Lc8/lXo;

    invoke-virtual {v0, v1}, Lc8/lXo;->canContain(Lc8/lXo;)Z

    move-result v0

    return v0
.end method

.method public clean()V
    .locals 3

    .prologue
    .line 176
    iget-object v2, p0, Lc8/kXo;->theAtts:Lc8/iXo;

    invoke-virtual {v2}, Lc8/iXo;->getLength()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 177
    iget-object v2, p0, Lc8/kXo;->theAtts:Lc8/iXo;

    invoke-virtual {v2, v0}, Lc8/iXo;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lc8/kXo;->theAtts:Lc8/iXo;

    invoke-virtual {v2, v0}, Lc8/iXo;->getValue(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 180
    :cond_0
    iget-object v2, p0, Lc8/kXo;->theAtts:Lc8/iXo;

    invoke-virtual {v2, v0}, Lc8/iXo;->removeAttribute(I)V

    .line 176
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 184
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public flags()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lc8/kXo;->theType:Lc8/lXo;

    invoke-virtual {v0}, Lc8/lXo;->flags()I

    move-result v0

    return v0
.end method

.method public isPreclosed()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lc8/kXo;->preclosed:Z

    return v0
.end method

.method public localName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lc8/kXo;->theType:Lc8/lXo;

    invoke-virtual {v0}, Lc8/lXo;->localName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public model()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lc8/kXo;->theType:Lc8/lXo;

    invoke-virtual {v0}, Lc8/lXo;->model()I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lc8/kXo;->theType:Lc8/lXo;

    invoke-virtual {v0}, Lc8/lXo;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public namespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lc8/kXo;->theType:Lc8/lXo;

    invoke-virtual {v0}, Lc8/lXo;->namespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Lc8/kXo;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lc8/kXo;->theNext:Lc8/kXo;

    return-object v0
.end method

.method public parent()Lc8/lXo;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lc8/kXo;->theType:Lc8/lXo;

    invoke-virtual {v0}, Lc8/lXo;->parent()Lc8/lXo;

    move-result-object v0

    return-object v0
.end method

.method public preclose()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/kXo;->preclosed:Z

    .line 193
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lc8/kXo;->theType:Lc8/lXo;

    iget-object v1, p0, Lc8/kXo;->theAtts:Lc8/iXo;

    invoke-virtual {v0, v1, p1, p2, p3}, Lc8/lXo;->setAttribute(Lc8/iXo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public setNext(Lc8/kXo;)V
    .locals 0
    .param p1, "next"    # Lc8/kXo;

    .prologue
    .line 72
    iput-object p1, p0, Lc8/kXo;->theNext:Lc8/kXo;

    return-void
.end method
