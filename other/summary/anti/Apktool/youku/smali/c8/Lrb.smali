.class public final Lc8/Lrb;
.super Ljava/lang/Object;
.source "ExpressionHolder.java"


# instance fields
.field config:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field eventType:Ljava/lang/String;

.field expressionPair:Lc8/ysb;

.field prop:Ljava/lang/String;

.field targetInstanceId:Ljava/lang/String;

.field targetRef:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lc8/ysb;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "targetInstanceId"    # Ljava/lang/String;
    .param p3, "expressionPair"    # Lc8/ysb;
    .param p4, "prop"    # Ljava/lang/String;
    .param p5, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lc8/ysb;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p6, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lc8/Lrb;->targetRef:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lc8/Lrb;->targetInstanceId:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lc8/Lrb;->expressionPair:Lc8/ysb;

    .line 19
    iput-object p4, p0, Lc8/Lrb;->prop:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lc8/Lrb;->eventType:Ljava/lang/String;

    .line 21
    if-nez p6, :cond_0

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lc8/Lrb;->config:Ljava/util/Map;

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lc8/Lrb;->config:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    if-ne p0, p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v1

    .line 31
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 33
    check-cast v0, Lc8/Lrb;

    .line 35
    .local v0, "that":Lc8/Lrb;
    iget-object v3, p0, Lc8/Lrb;->targetRef:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lc8/Lrb;->targetRef:Ljava/lang/String;

    iget-object v4, v0, Lc8/Lrb;->targetRef:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 36
    goto :goto_0

    .line 35
    :cond_5
    iget-object v3, v0, Lc8/Lrb;->targetRef:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 37
    :cond_6
    iget-object v3, p0, Lc8/Lrb;->expressionPair:Lc8/ysb;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lc8/Lrb;->expressionPair:Lc8/ysb;

    iget-object v4, v0, Lc8/Lrb;->expressionPair:Lc8/ysb;

    invoke-virtual {v3, v4}, Lc8/ysb;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    .line 38
    goto :goto_0

    .line 37
    :cond_8
    iget-object v3, v0, Lc8/Lrb;->expressionPair:Lc8/ysb;

    if-nez v3, :cond_7

    .line 39
    :cond_9
    iget-object v3, p0, Lc8/Lrb;->prop:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lc8/Lrb;->prop:Ljava/lang/String;

    iget-object v4, v0, Lc8/Lrb;->prop:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    goto :goto_0

    :cond_b
    iget-object v3, v0, Lc8/Lrb;->prop:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 40
    :cond_c
    iget-object v3, p0, Lc8/Lrb;->eventType:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lc8/Lrb;->eventType:Ljava/lang/String;

    iget-object v4, v0, Lc8/Lrb;->eventType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move v1, v2

    .line 41
    goto :goto_0

    .line 40
    :cond_e
    iget-object v3, v0, Lc8/Lrb;->eventType:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 42
    :cond_f
    iget-object v3, p0, Lc8/Lrb;->config:Ljava/util/Map;

    if-eqz v3, :cond_10

    iget-object v1, p0, Lc8/Lrb;->config:Ljava/util/Map;

    iget-object v2, v0, Lc8/Lrb;->config:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_10
    iget-object v3, v0, Lc8/Lrb;->config:Ljava/util/Map;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v2, p0, Lc8/Lrb;->targetRef:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/Lrb;->targetRef:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 49
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lc8/Lrb;->expressionPair:Lc8/ysb;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc8/Lrb;->expressionPair:Lc8/ysb;

    invoke-virtual {v2}, Lc8/ysb;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 50
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lc8/Lrb;->prop:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lc8/Lrb;->prop:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 51
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lc8/Lrb;->eventType:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lc8/Lrb;->eventType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 52
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lc8/Lrb;->config:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lc8/Lrb;->config:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 53
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 48
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 49
    goto :goto_1

    :cond_3
    move v2, v1

    .line 50
    goto :goto_2

    :cond_4
    move v2, v1

    .line 51
    goto :goto_3
.end method
