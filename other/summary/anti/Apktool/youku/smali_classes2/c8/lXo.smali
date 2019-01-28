.class public Lc8/lXo;
.super Ljava/lang/Object;
.source "ElementType.java"


# instance fields
.field private theAtts:Lc8/iXo;

.field private theFlags:I

.field private theLocalName:Ljava/lang/String;

.field private theMemberOf:I

.field private theModel:I

.field private theName:Ljava/lang/String;

.field private theNamespace:Ljava/lang/String;

.field private theParent:Lc8/lXo;

.field private theSchema:Lc8/tXo;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILc8/tXo;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # I
    .param p3, "memberOf"    # I
    .param p4, "flags"    # I
    .param p5, "schema"    # Lc8/tXo;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lc8/lXo;->theName:Ljava/lang/String;

    .line 52
    iput p2, p0, Lc8/lXo;->theModel:I

    .line 53
    iput p3, p0, Lc8/lXo;->theMemberOf:I

    .line 54
    iput p4, p0, Lc8/lXo;->theFlags:I

    .line 55
    new-instance v0, Lc8/iXo;

    invoke-direct {v0}, Lc8/iXo;-><init>()V

    iput-object v0, p0, Lc8/lXo;->theAtts:Lc8/iXo;

    .line 56
    iput-object p5, p0, Lc8/lXo;->theSchema:Lc8/tXo;

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/lXo;->namespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/lXo;->theNamespace:Ljava/lang/String;

    .line 58
    invoke-virtual {p0, p1}, Lc8/lXo;->localName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/lXo;->theLocalName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 217
    if-nez p0, :cond_1

    .line 234
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 218
    .restart local p0    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 219
    const-string/jumbo v5, "  "

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 220
    const/4 v3, 0x0

    .line 221
    .local v3, "space":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 222
    .local v2, "len":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 223
    .local v0, "b":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 224
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 225
    .local v4, "v":C
    const/16 v5, 0x20

    if-ne v4, v5, :cond_3

    .line 226
    if-nez v3, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 227
    :cond_2
    const/4 v3, 0x1

    .line 223
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 230
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 231
    const/4 v3, 0x0

    goto :goto_2

    .line 234
    .end local v4    # "v":C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public atts()Lc8/iXo;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lc8/lXo;->theAtts:Lc8/iXo;

    return-object v0
.end method

.method public canContain(Lc8/lXo;)Z
    .locals 2
    .param p1, "other"    # Lc8/lXo;

    .prologue
    .line 176
    iget v0, p0, Lc8/lXo;->theModel:I

    iget v1, p1, Lc8/lXo;->theMemberOf:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flags()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lc8/lXo;->theFlags:I

    return v0
.end method

.method public localName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lc8/lXo;->theLocalName:Ljava/lang/String;

    return-object v0
.end method

.method public localName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 90
    .local v0, "colon":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 94
    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public model()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lc8/lXo;->theModel:I

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lc8/lXo;->theName:Ljava/lang/String;

    return-object v0
.end method

.method public namespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lc8/lXo;->theNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public namespace(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attribute"    # Z

    .prologue
    .line 70
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 71
    .local v0, "colon":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 72
    if-eqz p2, :cond_0

    const-string/jumbo v2, ""

    .line 79
    :goto_0
    return-object v2

    .line 72
    :cond_0
    iget-object v2, p0, Lc8/lXo;->theSchema:Lc8/tXo;

    invoke-virtual {v2}, Lc8/tXo;->getURI()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 74
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "prefix":Ljava/lang/String;
    const-string/jumbo v2, "xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    const-string/jumbo v2, "http://www.w3.org/XML/1998/namespace"

    goto :goto_0

    .line 79
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "urn:x-prefix:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public parent()Lc8/lXo;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lc8/lXo;->theParent:Lc8/lXo;

    return-object v0
.end method

.method public setAttribute(Lc8/iXo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "atts"    # Lc8/iXo;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 190
    const-string/jumbo v0, "xmlns"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "xmlns:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lc8/lXo;->namespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "namespace":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lc8/lXo;->localName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "localName":Ljava/lang/String;
    invoke-virtual {p1, p2}, Lc8/iXo;->getIndex(Ljava/lang/String;)I

    move-result v4

    .line 197
    .local v4, "i":I
    const/4 v0, -0x1

    if-ne v4, v0, :cond_4

    .line 198
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 199
    if-nez p3, :cond_2

    const-string/jumbo p3, "CDATA"

    .line 200
    :cond_2
    const-string/jumbo v0, "CDATA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p4}, Lc8/lXo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_3
    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 201
    invoke-virtual/range {v0 .. v5}, Lc8/iXo;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_4
    if-nez p3, :cond_5

    invoke-virtual {p1, v4}, Lc8/iXo;->getType(I)Ljava/lang/String;

    move-result-object p3

    .line 205
    :cond_5
    const-string/jumbo v0, "CDATA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p4}, Lc8/lXo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_6
    move-object v3, p1

    move-object v5, v1

    move-object v6, v2

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    .line 206
    invoke-virtual/range {v3 .. v9}, Lc8/iXo;->setAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setParent(Lc8/lXo;)V
    .locals 0
    .param p1, "parent"    # Lc8/lXo;

    .prologue
    .line 274
    iput-object p1, p0, Lc8/lXo;->theParent:Lc8/lXo;

    return-void
.end method
