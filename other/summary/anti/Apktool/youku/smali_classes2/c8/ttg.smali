.class public Lc8/ttg;
.super Ljava/lang/Object;
.source "UploaderConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/stg;
    }
.end annotation


# instance fields
.field a:Lc8/stg;

.field b:Lc8/stg;

.field c:Lc8/stg;

.field final d:Lc8/tsg;


# direct methods
.method constructor <init>(Lc8/tsg;)V
    .locals 1
    .param p1, "environment"    # Lc8/tsg;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lc8/stg;

    invoke-direct {v0}, Lc8/stg;-><init>()V

    iput-object v0, p0, Lc8/ttg;->a:Lc8/stg;

    .line 134
    new-instance v0, Lc8/stg;

    invoke-direct {v0}, Lc8/stg;-><init>()V

    iput-object v0, p0, Lc8/ttg;->b:Lc8/stg;

    .line 135
    new-instance v0, Lc8/stg;

    invoke-direct {v0}, Lc8/stg;-><init>()V

    iput-object v0, p0, Lc8/ttg;->c:Lc8/stg;

    .line 136
    iput-object p1, p0, Lc8/ttg;->d:Lc8/tsg;

    .line 137
    return-void
.end method


# virtual methods
.method public a()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v2, p0, Lc8/ttg;->d:Lc8/tsg;

    invoke-virtual {v2}, Lc8/tsg;->getCurrentElement()Lc8/gsg;

    move-result-object v0

    .line 141
    .local v0, "element":Lc8/gsg;
    invoke-virtual {p0, v0}, Lc8/ttg;->a(Lc8/gsg;)Landroid/util/Pair;

    move-result-object v1

    .line 142
    .local v1, "pair":Landroid/util/Pair;
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lc8/stg;

    iget-object v2, v2, Lc8/stg;->e:Landroid/util/Pair;

    return-object v2
.end method

.method a(Lc8/gsg;)Landroid/util/Pair;
    .locals 3
    .param p1, "element"    # Lc8/gsg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/gsg;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lc8/stg;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x50

    .line 256
    iget v0, p1, Lc8/gsg;->environment:I

    packed-switch v0, :pswitch_data_0

    .line 262
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lc8/ttg;->a:Lc8/stg;

    const/16 v2, 0x1bb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    .line 258
    :pswitch_0
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lc8/ttg;->b:Lc8/stg;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 260
    :pswitch_1
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lc8/ttg;->c:Lc8/stg;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(J)V
    .locals 9
    .param p1, "timeStamp"    # J

    .prologue
    .line 226
    iget-object v3, p0, Lc8/ttg;->d:Lc8/tsg;

    invoke-virtual {v3}, Lc8/tsg;->getCurrentElement()Lc8/gsg;

    move-result-object v0

    .line 227
    .local v0, "element":Lc8/gsg;
    invoke-virtual {p0, v0}, Lc8/ttg;->a(Lc8/gsg;)Landroid/util/Pair;

    move-result-object v2

    .line 228
    .local v2, "pair":Landroid/util/Pair;
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lc8/stg;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long v4, p1, v4

    iput-wide v4, v3, Lc8/stg;->f:J

    .line 229
    const/4 v1, 0x4

    .line 230
    .local v1, "p":I
    invoke-static {v1}, Lc8/Tsg;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    const-string/jumbo v4, "UploaderConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[updateTimestampOffset] update timestamp succeed.,environment:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Lc8/gsg;->environment:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", offset="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lc8/stg;

    iget-wide v6, v3, Lc8/stg;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " seconds"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v4, v3}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V
    .locals 14
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "expired"    # J
    .param p4, "declareTargets"    # Ljava/util/List;
    .param p5, "uploadTargets"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v8, p0, Lc8/ttg;->d:Lc8/tsg;

    invoke-virtual {v8}, Lc8/tsg;->getCurrentElement()Lc8/gsg;

    move-result-object v2

    .line 168
    .local v2, "element":Lc8/gsg;
    invoke-virtual {p0, v2}, Lc8/ttg;->a(Lc8/gsg;)Landroid/util/Pair;

    move-result-object v7

    .line 169
    .local v7, "pair":Landroid/util/Pair;
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lc8/stg;

    iget-wide v8, v8, Lc8/stg;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long v0, v8, v10

    .line 170
    .local v0, "current":J
    const-wide/16 v8, 0x78

    add-long/2addr v8, v0

    cmp-long v8, p2, v8

    if-gez v8, :cond_0

    .line 171
    const-wide/16 v8, 0x78

    add-long p2, v0, v8

    .line 173
    :cond_0
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lc8/stg;

    new-instance v9, Landroid/util/Pair;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {v9, p1, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v9, v8, Lc8/stg;->e:Landroid/util/Pair;

    .line 175
    if-eqz p5, :cond_2

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 176
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lc8/stg;

    iget-object v8, v8, Lc8/stg;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 177
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 178
    .local v4, "p":Landroid/util/Pair;
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lc8/stg;

    iget-object v8, v8, Lc8/stg;->c:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    .end local v4    # "p":Landroid/util/Pair;
    :cond_1
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lc8/stg;

    const/4 v9, 0x0

    iput v9, v8, Lc8/stg;->d:I

    .line 183
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz p4, :cond_5

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 184
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lc8/stg;

    iget-object v8, v8, Lc8/stg;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 185
    new-instance v5, Landroid/util/Pair;

    iget-object v8, v2, Lc8/gsg;->host:Ljava/lang/String;

    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v5, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    .local v5, "p1":Landroid/util/Pair;
    new-instance v6, Landroid/util/Pair;

    iget-object v8, v2, Lc8/gsg;->ipAddress:Ljava/lang/String;

    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v6, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .local v6, "p2":Landroid/util/Pair;
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 189
    .restart local v4    # "p":Landroid/util/Pair;
    invoke-virtual {v5, v4}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v6, v4}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 192
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lc8/stg;

    iget-object v8, v8, Lc8/stg;->a:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 194
    .end local v4    # "p":Landroid/util/Pair;
    :cond_4
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lc8/stg;

    iget-object v8, v8, Lc8/stg;->a:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lc8/stg;

    iget-object v8, v8, Lc8/stg;->a:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lc8/stg;

    const/4 v9, 0x0

    iput v9, v8, Lc8/stg;->b:I

    .line 199
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "p1":Landroid/util/Pair;
    .end local v6    # "p2":Landroid/util/Pair;
    :cond_5
    return-void
.end method

.method public b()Landroid/util/Pair;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v2, p0, Lc8/ttg;->d:Lc8/tsg;

    invoke-virtual {v2}, Lc8/tsg;->getCurrentElement()Lc8/gsg;

    move-result-object v0

    .line 148
    .local v0, "element":Lc8/gsg;
    invoke-virtual {p0, v0}, Lc8/ttg;->a(Lc8/gsg;)Landroid/util/Pair;

    move-result-object v1

    .line 149
    .local v1, "pair":Landroid/util/Pair;
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lc8/stg;

    iget-object v2, v2, Lc8/stg;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 150
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lc8/stg;

    iget-object v2, v2, Lc8/stg;->a:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    iget-object v4, v0, Lc8/gsg;->host:Ljava/lang/String;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lc8/stg;

    iget-object v2, v2, Lc8/stg;->a:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    iget-object v4, v0, Lc8/gsg;->ipAddress:Ljava/lang/String;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lc8/stg;

    iget v3, v2, Lc8/stg;->b:I

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lc8/stg;

    iget-object v2, v2, Lc8/stg;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v3, v2, :cond_1

    .line 154
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lc8/stg;

    const/4 v3, 0x0

    iput v3, v2, Lc8/stg;->b:I

    .line 156
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lc8/stg;

    iget-object v3, v2, Lc8/stg;->a:Ljava/util/List;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lc8/stg;

    iget v2, v2, Lc8/stg;->b:I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    return-object v2
.end method

.method public c()V
    .locals 4

    .prologue
    .line 160
    iget-object v2, p0, Lc8/ttg;->d:Lc8/tsg;

    invoke-virtual {v2}, Lc8/tsg;->getCurrentElement()Lc8/gsg;

    move-result-object v0

    .line 161
    .local v0, "element":Lc8/gsg;
    invoke-virtual {p0, v0}, Lc8/ttg;->a(Lc8/gsg;)Landroid/util/Pair;

    move-result-object v1

    .line 162
    .local v1, "pair":Landroid/util/Pair;
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lc8/stg;

    iget v3, v2, Lc8/stg;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lc8/stg;->b:I

    .line 163
    return-void
.end method

.method public d()Landroid/util/Pair;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v2, p0, Lc8/ttg;->d:Lc8/tsg;

    invoke-virtual {v2}, Lc8/tsg;->getCurrentElement()Lc8/gsg;

    move-result-object v0

    .line 204
    .local v0, "element":Lc8/gsg;
    invoke-virtual {p0, v0}, Lc8/ttg;->a(Lc8/gsg;)Landroid/util/Pair;

    move-result-object v1

    .line 205
    .local v1, "pair":Landroid/util/Pair;
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lc8/stg;

    iget-object v2, v2, Lc8/stg;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 206
    const/4 v2, 0x0

    .line 211
    :goto_0
    return-object v2

    .line 208
    :cond_0
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lc8/stg;

    iget v3, v2, Lc8/stg;->d:I

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lc8/stg;

    iget-object v2, v2, Lc8/stg;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v3, v2, :cond_1

    .line 209
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lc8/stg;

    const/4 v3, 0x0

    iput v3, v2, Lc8/stg;->d:I

    .line 211
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lc8/stg;

    iget-object v3, v2, Lc8/stg;->c:Ljava/util/List;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lc8/stg;

    iget v2, v2, Lc8/stg;->d:I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    goto :goto_0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 215
    iget-object v2, p0, Lc8/ttg;->d:Lc8/tsg;

    invoke-virtual {v2}, Lc8/tsg;->getCurrentElement()Lc8/gsg;

    move-result-object v0

    .line 216
    .local v0, "element":Lc8/gsg;
    invoke-virtual {p0, v0}, Lc8/ttg;->a(Lc8/gsg;)Landroid/util/Pair;

    move-result-object v1

    .line 217
    .local v1, "pair":Landroid/util/Pair;
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lc8/stg;

    iget v3, v2, Lc8/stg;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lc8/stg;->d:I

    .line 218
    return-void
.end method

.method public f()J
    .locals 4

    .prologue
    .line 242
    iget-object v2, p0, Lc8/ttg;->d:Lc8/tsg;

    invoke-virtual {v2}, Lc8/tsg;->getCurrentElement()Lc8/gsg;

    move-result-object v0

    .line 243
    .local v0, "element":Lc8/gsg;
    invoke-virtual {p0, v0}, Lc8/ttg;->a(Lc8/gsg;)Landroid/util/Pair;

    move-result-object v1

    .line 244
    .local v1, "pair":Landroid/util/Pair;
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lc8/stg;

    iget-wide v2, v2, Lc8/stg;->f:J

    return-wide v2
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lc8/ttg;->d:Lc8/tsg;

    invoke-virtual {v0}, Lc8/tsg;->getCurrentElement()Lc8/gsg;

    move-result-object v0

    iget-object v0, v0, Lc8/gsg;->host:Ljava/lang/String;

    return-object v0
.end method
