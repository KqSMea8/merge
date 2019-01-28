.class public final Lc8/gld;
.super Lc8/smd;
.source "JsonTreeWriter.java"


# static fields
.field private static final SENTINEL_CLOSED:Lc8/Qjd;

.field private static final UNWRITABLE_WRITER:Ljava/io/Writer;


# instance fields
.field private pendingName:Ljava/lang/String;

.field private product:Lc8/Mjd;

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Mjd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lc8/fld;

    invoke-direct {v0}, Lc8/fld;-><init>()V

    sput-object v0, Lc8/gld;->UNWRITABLE_WRITER:Ljava/io/Writer;

    .line 46
    new-instance v0, Lc8/Qjd;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Lc8/Qjd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/gld;->SENTINEL_CLOSED:Lc8/Qjd;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lc8/gld;->UNWRITABLE_WRITER:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lc8/smd;-><init>(Ljava/io/Writer;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/gld;->stack:Ljava/util/List;

    .line 55
    sget-object v0, Lc8/Njd;->INSTANCE:Lc8/Njd;

    iput-object v0, p0, Lc8/gld;->product:Lc8/Mjd;

    .line 59
    return-void
.end method

.method private peek()Lc8/Mjd;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lc8/gld;->stack:Ljava/util/List;

    iget-object v1, p0, Lc8/gld;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Mjd;

    return-object v0
.end method

.method private put(Lc8/Mjd;)V
    .locals 3
    .param p1, "value"    # Lc8/Mjd;

    .prologue
    .line 76
    iget-object v2, p0, Lc8/gld;->pendingName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 77
    invoke-virtual {p1}, Lc8/Mjd;->isJsonNull()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lc8/gld;->getSerializeNulls()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    :cond_0
    invoke-direct {p0}, Lc8/gld;->peek()Lc8/Mjd;

    move-result-object v1

    check-cast v1, Lc8/Ojd;

    .line 79
    .local v1, "object":Lc8/Ojd;
    iget-object v2, p0, Lc8/gld;->pendingName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lc8/Ojd;->add(Ljava/lang/String;Lc8/Mjd;)V

    .line 81
    .end local v1    # "object":Lc8/Ojd;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/gld;->pendingName:Ljava/lang/String;

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_2
    iget-object v2, p0, Lc8/gld;->stack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    iput-object p1, p0, Lc8/gld;->product:Lc8/Mjd;

    goto :goto_0

    .line 85
    :cond_3
    invoke-direct {p0}, Lc8/gld;->peek()Lc8/Mjd;

    move-result-object v0

    .line 86
    .local v0, "element":Lc8/Mjd;
    instance-of v2, v0, Lc8/Jjd;

    if-eqz v2, :cond_4

    .line 87
    check-cast v0, Lc8/Jjd;

    .end local v0    # "element":Lc8/Mjd;
    invoke-virtual {v0, p1}, Lc8/Jjd;->add(Lc8/Mjd;)V

    goto :goto_0

    .line 89
    .restart local v0    # "element":Lc8/Mjd;
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method


# virtual methods
.method public beginArray()Lc8/smd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lc8/Jjd;

    invoke-direct {v0}, Lc8/Jjd;-><init>()V

    .line 96
    .local v0, "array":Lc8/Jjd;
    invoke-direct {p0, v0}, Lc8/gld;->put(Lc8/Mjd;)V

    .line 97
    iget-object v1, p0, Lc8/gld;->stack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-object p0
.end method

.method public beginObject()Lc8/smd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lc8/Ojd;

    invoke-direct {v0}, Lc8/Ojd;-><init>()V

    .line 115
    .local v0, "object":Lc8/Ojd;
    invoke-direct {p0, v0}, Lc8/gld;->put(Lc8/Mjd;)V

    .line 116
    iget-object v1, p0, Lc8/gld;->stack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-object p0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lc8/gld;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    iget-object v0, p0, Lc8/gld;->stack:Ljava/util/List;

    sget-object v1, Lc8/gld;->SENTINEL_CLOSED:Lc8/Qjd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public endArray()Lc8/smd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v1, p0, Lc8/gld;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/gld;->pendingName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 105
    :cond_1
    invoke-direct {p0}, Lc8/gld;->peek()Lc8/Mjd;

    move-result-object v0

    .line 106
    .local v0, "element":Lc8/Mjd;
    instance-of v1, v0, Lc8/Jjd;

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lc8/gld;->stack:Ljava/util/List;

    iget-object v2, p0, Lc8/gld;->stack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    return-object p0

    .line 110
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public endObject()Lc8/smd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v1, p0, Lc8/gld;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/gld;->pendingName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 122
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 124
    :cond_1
    invoke-direct {p0}, Lc8/gld;->peek()Lc8/Mjd;

    move-result-object v0

    .line 125
    .local v0, "element":Lc8/Mjd;
    instance-of v1, v0, Lc8/Ojd;

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lc8/gld;->stack:Ljava/util/List;

    iget-object v2, p0, Lc8/gld;->stack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 127
    return-object p0

    .line 129
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    return-void
.end method

.method public get()Lc8/Mjd;
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lc8/gld;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/gld;->stack:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-object v0, p0, Lc8/gld;->product:Lc8/Mjd;

    return-object v0
.end method

.method public name(Ljava/lang/String;)Lc8/smd;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Lc8/gld;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/gld;->pendingName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 136
    :cond_1
    invoke-direct {p0}, Lc8/gld;->peek()Lc8/Mjd;

    move-result-object v0

    .line 137
    .local v0, "element":Lc8/Mjd;
    instance-of v1, v0, Lc8/Ojd;

    if-eqz v1, :cond_2

    .line 138
    iput-object p1, p0, Lc8/gld;->pendingName:Ljava/lang/String;

    .line 139
    return-object p0

    .line 141
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public nullValue()Lc8/smd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    sget-object v0, Lc8/Njd;->INSTANCE:Lc8/Njd;

    invoke-direct {p0, v0}, Lc8/gld;->put(Lc8/Mjd;)V

    .line 154
    return-object p0
.end method

.method public value(D)Lc8/smd;
    .locals 3
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0}, Lc8/gld;->isLenient()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    new-instance v0, Lc8/Qjd;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Qjd;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lc8/gld;->put(Lc8/Mjd;)V

    .line 175
    return-object p0
.end method

.method public value(J)Lc8/smd;
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lc8/Qjd;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Qjd;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lc8/gld;->put(Lc8/Mjd;)V

    .line 180
    return-object p0
.end method

.method public value(Ljava/lang/Boolean;)Lc8/smd;
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lc8/gld;->nullValue()Lc8/smd;

    move-result-object p0

    .line 167
    .end local p0    # "this":Lc8/gld;
    :goto_0
    return-object p0

    .line 166
    .restart local p0    # "this":Lc8/gld;
    :cond_0
    new-instance v0, Lc8/Qjd;

    invoke-direct {v0, p1}, Lc8/Qjd;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lc8/gld;->put(Lc8/Mjd;)V

    goto :goto_0
.end method

.method public value(Ljava/lang/Number;)Lc8/smd;
    .locals 5
    .param p1, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    invoke-virtual {p0}, Lc8/gld;->nullValue()Lc8/smd;

    move-result-object p0

    .line 196
    .end local p0    # "this":Lc8/gld;
    :goto_0
    return-object p0

    .line 188
    .restart local p0    # "this":Lc8/gld;
    :cond_0
    invoke-virtual {p0}, Lc8/gld;->isLenient()Z

    move-result v2

    if-nez v2, :cond_2

    .line 189
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 190
    .local v0, "d":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    .end local v0    # "d":D
    :cond_2
    new-instance v2, Lc8/Qjd;

    invoke-direct {v2, p1}, Lc8/Qjd;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v2}, Lc8/gld;->put(Lc8/Mjd;)V

    goto :goto_0
.end method

.method public value(Ljava/lang/String;)Lc8/smd;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lc8/gld;->nullValue()Lc8/smd;

    move-result-object p0

    .line 149
    .end local p0    # "this":Lc8/gld;
    :goto_0
    return-object p0

    .line 148
    .restart local p0    # "this":Lc8/gld;
    :cond_0
    new-instance v0, Lc8/Qjd;

    invoke-direct {v0, p1}, Lc8/Qjd;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lc8/gld;->put(Lc8/Mjd;)V

    goto :goto_0
.end method

.method public value(Z)Lc8/smd;
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Lc8/Qjd;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Qjd;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lc8/gld;->put(Lc8/Mjd;)V

    .line 159
    return-object p0
.end method
