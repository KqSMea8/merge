.class public Lc8/Jsg;
.super Ljava/lang/Object;
.source "ActionStatistics.java"


# static fields
.field private static volatile u:Z

.field private static volatile v:Z

.field private static final w:[B


# instance fields
.field final a:Z

.field b:J

.field c:J

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:I

.field g:I

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:J

.field l:J

.field m:J

.field n:J

.field o:J

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:I

.field s:J

.field t:I

.field private x:Lc8/Jsg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-boolean v0, Lc8/Jsg;->u:Z

    .line 29
    sput-boolean v0, Lc8/Jsg;->v:Z

    .line 31
    new-array v0, v0, [B

    sput-object v0, Lc8/Jsg;->w:[B

    return-void
.end method

.method constructor <init>(ZLc8/Jsg;)V
    .locals 0
    .param p1, "isDeclarationStatistics"    # Z
    .param p2, "previous"    # Lc8/Jsg;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean p1, p0, Lc8/Jsg;->a:Z

    .line 70
    iput-object p2, p0, Lc8/Jsg;->x:Lc8/Jsg;

    .line 71
    return-void
.end method

.method private b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 240
    .local v0, "dimensions":Ljava/util/Set;
    const-string/jumbo v1, "biz"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    const-string/jumbo v1, "token"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    const-string/jumbo v1, "fileid"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    const-string/jumbo v1, "ip"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    const-string/jumbo v1, "port"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    const-string/jumbo v1, "ret"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    const-string/jumbo v1, "errorcode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    const-string/jumbo v1, "subcode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    const-string/jumbo v1, "errormsg"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    const-string/jumbo v1, "retrytimes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    iget-boolean v1, p0, Lc8/Jsg;->a:Z

    if-nez v1, :cond_0

    .line 251
    const-string/jumbo v1, "encrypted"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_0
    return-object v0
.end method

.method private c()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 258
    .local v0, "measures":Ljava/util/Set;
    const-string/jumbo v1, "connecttime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    const-string/jumbo v1, "costtime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    const-string/jumbo v1, "size"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    const-string/jumbo v1, "speed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    const-string/jumbo v1, "totaltime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    const-string/jumbo v1, "md5time"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    const-string/jumbo v1, "upstream"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 265
    const-string/jumbo v1, "downstream"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 34

    .prologue
    .line 94
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v17, "measures":Ljava/util/HashMap;
    const-wide/16 v8, 0x0

    .line 97
    .local v8, "connectTime":J
    const-wide/16 v12, 0x0

    .line 98
    .local v12, "costTime":J
    const-wide/16 v24, 0x0

    .line 100
    .local v24, "totalTime":J
    const-wide/16 v10, 0x0

    .line 101
    .local v10, "connectTimePrevious":J
    const-wide/16 v14, 0x0

    .line 102
    .local v14, "costTimePrevious":J
    const/4 v7, 0x0

    .line 103
    .local v7, "connectCountPrevious":I
    const-wide/16 v26, 0x0

    .line 104
    .local v26, "upstreamPrevious":J
    const-wide/16 v18, 0x0

    .line 106
    .local v18, "downstreamPrevious":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/Jsg;->x:Lc8/Jsg;

    .line 107
    .local v6, "before":Lc8/Jsg;
    :goto_0
    if-eqz v6, :cond_2

    iget-boolean v0, v6, Lc8/Jsg;->a:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 108
    iget-wide v0, v6, Lc8/Jsg;->o:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v21, v28, v30

    if-lez v21, :cond_0

    iget-wide v0, v6, Lc8/Jsg;->n:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v21, v28, v30

    if-lez v21, :cond_0

    .line 109
    iget-wide v0, v6, Lc8/Jsg;->o:J

    move-wide/from16 v28, v0

    iget-wide v0, v6, Lc8/Jsg;->n:J

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    add-long v10, v10, v28

    .line 110
    add-int/lit8 v7, v7, 0x1

    .line 112
    :cond_0
    iget-wide v0, v6, Lc8/Jsg;->m:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v21, v28, v30

    if-lez v21, :cond_1

    iget-wide v0, v6, Lc8/Jsg;->l:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v21, v28, v30

    if-lez v21, :cond_1

    .line 113
    iget-wide v0, v6, Lc8/Jsg;->m:J

    move-wide/from16 v28, v0

    iget-wide v0, v6, Lc8/Jsg;->l:J

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    add-long v14, v14, v28

    .line 115
    :cond_1
    iget-wide v0, v6, Lc8/Jsg;->b:J

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    .line 116
    iget-wide v0, v6, Lc8/Jsg;->c:J

    move-wide/from16 v28, v0

    add-long v18, v18, v28

    .line 117
    iget-object v6, v6, Lc8/Jsg;->x:Lc8/Jsg;

    goto :goto_0

    .line 120
    :cond_2
    const/16 v20, 0x4

    .line 121
    .local v20, "p":I
    invoke-static/range {v20 .. v20}, Lc8/Tsg;->a(I)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 122
    const-string/jumbo v21, "ActionStatistics"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " result:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Jsg;->g:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " connectCountPrevious:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " connectTimePrevious:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " connectedTimeCurrent:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->o:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->n:J

    move-wide/from16 v32, v0

    sub-long v30, v30, v32

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " costTimePrevious:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " costTimeCurrent:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->m:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->l:J

    move-wide/from16 v32, v0

    sub-long v30, v30, v32

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " upstreamPrevious:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " downstreamPrevious:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->o:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v21, v28, v30

    if-lez v21, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->n:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v21, v28, v30

    if-lez v21, :cond_5

    .line 129
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->o:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->n:J

    move-wide/from16 v30, v0

    sub-long v8, v28, v30

    .line 130
    const-wide/16 v28, 0x0

    cmp-long v21, v10, v28

    if-lez v21, :cond_4

    .line 131
    add-long/2addr v8, v10

    .line 133
    :cond_4
    add-long v24, v24, v8

    .line 134
    add-int/lit8 v21, v7, 0x1

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v28, v0

    div-long v8, v8, v28

    .line 136
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->m:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v21, v28, v30

    if-lez v21, :cond_7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->l:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v21, v28, v30

    if-lez v21, :cond_7

    .line 137
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->m:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->l:J

    move-wide/from16 v30, v0

    sub-long v12, v28, v30

    .line 138
    const-wide/16 v28, 0x0

    cmp-long v21, v14, v28

    if-lez v21, :cond_6

    .line 139
    add-long/2addr v12, v14

    .line 141
    :cond_6
    add-long v24, v24, v12

    .line 144
    :cond_7
    const-wide/16 v28, 0x0

    cmp-long v21, v8, v28

    if-lez v21, :cond_8

    .line 145
    const-string/jumbo v21, "connecttime"

    long-to-double v0, v8

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_8
    const-wide/16 v28, 0x0

    cmp-long v21, v12, v28

    if-lez v21, :cond_9

    .line 148
    const-string/jumbo v21, "costtime"

    long-to-double v0, v12

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->k:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v21, v28, v30

    if-lez v21, :cond_a

    .line 151
    const-string/jumbo v21, "size"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->k:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->s:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v21, v28, v30

    if-lez v21, :cond_b

    .line 155
    const-string/jumbo v21, "md5time"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->s:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_b
    const-wide/16 v28, 0x0

    cmp-long v21, v24, v28

    if-lez v21, :cond_c

    .line 159
    const-string/jumbo v21, "totaltime"

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->k:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v21, v28, v30

    if-lez v21, :cond_c

    .line 161
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->k:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x7d

    mul-long v28, v28, v30

    const-wide/16 v30, 0x80

    mul-long v30, v30, v24

    div-long v22, v28, v30

    .line 162
    .local v22, "speed":J
    const-string/jumbo v21, "speed"

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v22    # "speed":J
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->c:J

    move-wide/from16 v28, v0

    add-long v28, v28, v18

    const-wide/16 v30, 0x0

    cmp-long v21, v28, v30

    if-lez v21, :cond_d

    .line 167
    const-string/jumbo v21, "downstream"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->c:J

    move-wide/from16 v28, v0

    add-long v28, v28, v18

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->b:J

    move-wide/from16 v28, v0

    add-long v28, v28, v26

    const-wide/16 v30, 0x0

    cmp-long v21, v28, v30

    if-lez v21, :cond_e

    .line 170
    const-string/jumbo v21, "upstream"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->b:J

    move-wide/from16 v28, v0

    add-long v28, v28, v26

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_e
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 175
    .local v16, "dimensions":Ljava/util/HashMap;
    const-string/jumbo v21, "biz"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Jsg;->d:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v21, "port"

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Jsg;->f:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v21, "ip"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Jsg;->e:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string/jumbo v21, "ret"

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Jsg;->g:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Jsg;->h:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_f

    .line 180
    const-string/jumbo v21, "errorcode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Jsg;->h:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Jsg;->i:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_10

    .line 183
    const-string/jumbo v21, "subcode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Jsg;->i:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Jsg;->j:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_11

    .line 186
    const-string/jumbo v21, "errormsg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Jsg;->j:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Jsg;->p:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_12

    .line 190
    const-string/jumbo v21, "fileid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Jsg;->p:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Jsg;->q:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_13

    .line 193
    const-string/jumbo v21, "token"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Jsg;->q:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_13
    const-string/jumbo v21, "retrytimes"

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Jsg;->r:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Jsg;->a:Z

    move/from16 v21, v0

    if-nez v21, :cond_14

    .line 198
    const-string/jumbo v21, "encrypted"

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Jsg;->t:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_14
    const/16 v20, 0x2

    .line 202
    invoke-static/range {v20 .. v20}, Lc8/Tsg;->a(I)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 203
    const-string/jumbo v21, "ActionStatistics"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "commit statistic,isDeclarationStatistics="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Jsg;->a:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", dimensions:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", measures:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " upStreamTotal:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->b:J

    move-wide/from16 v30, v0

    add-long v30, v30, v26

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " downstream:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsg;->c:J

    move-wide/from16 v30, v0

    add-long v30, v30, v18

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Jsg;->a:Z

    move/from16 v21, v0

    if-eqz v21, :cond_18

    .line 209
    sget-boolean v21, Lc8/Jsg;->u:Z

    if-nez v21, :cond_17

    .line 210
    sget-object v28, Lc8/Jsg;->w:[B

    monitor-enter v28

    .line 211
    :try_start_0
    sget-boolean v21, Lc8/Jsg;->u:Z

    if-nez v21, :cond_16

    .line 212
    const-string/jumbo v21, "ARUP"

    const-string/jumbo v29, "RequestUpload"

    invoke-direct/range {p0 .. p0}, Lc8/Jsg;->c()Ljava/util/Set;

    move-result-object v30

    invoke-direct/range {p0 .. p0}, Lc8/Jsg;->b()Ljava/util/Set;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/qtg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Z)V

    .line 214
    const/16 v21, 0x1

    sput-boolean v21, Lc8/Jsg;->u:Z

    .line 216
    :cond_16
    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_17
    const-string/jumbo v21, "ARUP"

    const-string/jumbo v28, "RequestUpload"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lc8/qtg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 220
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v21

    .line 233
    :goto_1
    return-object v21

    .line 216
    :catchall_0
    move-exception v21

    :try_start_1
    monitor-exit v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v21

    .line 223
    :cond_18
    sget-boolean v21, Lc8/Jsg;->v:Z

    if-nez v21, :cond_1a

    .line 224
    sget-object v28, Lc8/Jsg;->w:[B

    monitor-enter v28

    .line 225
    :try_start_2
    sget-boolean v21, Lc8/Jsg;->v:Z

    if-nez v21, :cond_19

    .line 226
    const-string/jumbo v21, "ARUP"

    const-string/jumbo v29, "FileUpload"

    invoke-direct/range {p0 .. p0}, Lc8/Jsg;->c()Ljava/util/Set;

    move-result-object v30

    invoke-direct/range {p0 .. p0}, Lc8/Jsg;->b()Ljava/util/Set;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/qtg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Z)V

    .line 227
    const/16 v21, 0x1

    sput-boolean v21, Lc8/Jsg;->v:Z

    .line 229
    :cond_19
    monitor-exit v28
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 231
    :cond_1a
    const-string/jumbo v21, "ARUP"

    const-string/jumbo v28, "FileUpload"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lc8/qtg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 233
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_1

    .line 229
    :catchall_1
    move-exception v21

    :try_start_3
    monitor-exit v28
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v21
.end method
