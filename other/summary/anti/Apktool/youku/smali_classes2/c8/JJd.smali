.class public final Lc8/JJd;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field public final data:[B
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public limit:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public next:Lc8/JJd;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field owner:Z

.field public pos:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public prev:Lc8/JJd;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public shared:Z
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lc8/JJd;->data:[B

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/JJd;->owner:Z

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/JJd;->shared:Z

    .line 60
    return-void
.end method

.method constructor <init>(Lc8/JJd;)V
    .locals 3
    .param p1, "shareFrom"    # Lc8/JJd;

    .prologue
    .line 63
    iget-object v0, p1, Lc8/JJd;->data:[B

    iget v1, p1, Lc8/JJd;->pos:I

    iget v2, p1, Lc8/JJd;->limit:I

    invoke-direct {p0, v0, v1, v2}, Lc8/JJd;-><init>([BII)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p1, Lc8/JJd;->shared:Z

    .line 65
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lc8/JJd;->data:[B

    .line 69
    iput p2, p0, Lc8/JJd;->pos:I

    .line 70
    iput p3, p0, Lc8/JJd;->limit:I

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/JJd;->owner:Z

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/JJd;->shared:Z

    .line 73
    return-void
.end method


# virtual methods
.method public compact()V
    .locals 4

    .prologue
    .line 122
    iget-object v2, p0, Lc8/JJd;->prev:Lc8/JJd;

    if-ne v2, p0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 123
    :cond_0
    iget-object v2, p0, Lc8/JJd;->prev:Lc8/JJd;

    iget-boolean v2, v2, Lc8/JJd;->owner:Z

    if-nez v2, :cond_2

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 124
    :cond_2
    iget v2, p0, Lc8/JJd;->limit:I

    iget v3, p0, Lc8/JJd;->pos:I

    sub-int v1, v2, v3

    .line 125
    .local v1, "byteCount":I
    iget-object v2, p0, Lc8/JJd;->prev:Lc8/JJd;

    iget v2, v2, Lc8/JJd;->limit:I

    rsub-int v3, v2, 0x800

    iget-object v2, p0, Lc8/JJd;->prev:Lc8/JJd;

    iget-boolean v2, v2, Lc8/JJd;->shared:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    add-int v0, v3, v2

    .line 126
    .local v0, "availableByteCount":I
    if-gt v1, v0, :cond_1

    .line 127
    iget-object v2, p0, Lc8/JJd;->prev:Lc8/JJd;

    invoke-virtual {p0, v2, v1}, Lc8/JJd;->writeTo(Lc8/JJd;I)V

    .line 128
    invoke-virtual {p0}, Lc8/JJd;->pop()Lc8/JJd;

    .line 129
    invoke-static {p0}, Lc8/KJd;->recycle(Lc8/JJd;)V

    goto :goto_0

    .line 125
    .end local v0    # "availableByteCount":I
    :cond_3
    iget-object v2, p0, Lc8/JJd;->prev:Lc8/JJd;

    iget v2, v2, Lc8/JJd;->pos:I

    goto :goto_1
.end method

.method public pop()Lc8/JJd;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v2, p0, Lc8/JJd;->next:Lc8/JJd;

    if-eq v2, p0, :cond_0

    iget-object v0, p0, Lc8/JJd;->next:Lc8/JJd;

    .line 81
    .local v0, "result":Lc8/JJd;
    :goto_0
    iget-object v2, p0, Lc8/JJd;->prev:Lc8/JJd;

    iget-object v3, p0, Lc8/JJd;->next:Lc8/JJd;

    iput-object v3, v2, Lc8/JJd;->next:Lc8/JJd;

    .line 82
    iget-object v2, p0, Lc8/JJd;->next:Lc8/JJd;

    iget-object v3, p0, Lc8/JJd;->prev:Lc8/JJd;

    iput-object v3, v2, Lc8/JJd;->prev:Lc8/JJd;

    .line 83
    iput-object v1, p0, Lc8/JJd;->next:Lc8/JJd;

    .line 84
    iput-object v1, p0, Lc8/JJd;->prev:Lc8/JJd;

    .line 85
    return-object v0

    .end local v0    # "result":Lc8/JJd;
    :cond_0
    move-object v0, v1

    .line 80
    goto :goto_0
.end method

.method public push(Lc8/JJd;)Lc8/JJd;
    .locals 1
    .param p1, "segment"    # Lc8/JJd;

    .prologue
    .line 93
    iput-object p0, p1, Lc8/JJd;->prev:Lc8/JJd;

    .line 94
    iget-object v0, p0, Lc8/JJd;->next:Lc8/JJd;

    iput-object v0, p1, Lc8/JJd;->next:Lc8/JJd;

    .line 95
    iget-object v0, p0, Lc8/JJd;->next:Lc8/JJd;

    iput-object p1, v0, Lc8/JJd;->prev:Lc8/JJd;

    .line 96
    iput-object p1, p0, Lc8/JJd;->next:Lc8/JJd;

    .line 97
    return-object p1
.end method

.method public split(I)Lc8/JJd;
    .locals 3
    .param p1, "byteCount"    # I

    .prologue
    .line 109
    if-lez p1, :cond_0

    iget v1, p0, Lc8/JJd;->limit:I

    iget v2, p0, Lc8/JJd;->pos:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 110
    :cond_1
    new-instance v0, Lc8/JJd;

    invoke-direct {v0, p0}, Lc8/JJd;-><init>(Lc8/JJd;)V

    .line 111
    .local v0, "prefix":Lc8/JJd;
    iget v1, v0, Lc8/JJd;->pos:I

    add-int/2addr v1, p1

    iput v1, v0, Lc8/JJd;->limit:I

    .line 112
    iget v1, p0, Lc8/JJd;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lc8/JJd;->pos:I

    .line 113
    iget-object v1, p0, Lc8/JJd;->prev:Lc8/JJd;

    invoke-virtual {v1, v0}, Lc8/JJd;->push(Lc8/JJd;)Lc8/JJd;

    .line 114
    return-object v0
.end method

.method public writeTo(Lc8/JJd;I)V
    .locals 6
    .param p1, "sink"    # Lc8/JJd;
    .param p2, "byteCount"    # I

    .prologue
    const/16 v2, 0x800

    const/4 v5, 0x0

    .line 134
    iget-boolean v0, p1, Lc8/JJd;->owner:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 135
    :cond_0
    iget v0, p1, Lc8/JJd;->limit:I

    add-int/2addr v0, p2

    if-le v0, v2, :cond_3

    .line 137
    iget-boolean v0, p1, Lc8/JJd;->shared:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 138
    :cond_1
    iget v0, p1, Lc8/JJd;->limit:I

    add-int/2addr v0, p2

    iget v1, p1, Lc8/JJd;->pos:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 139
    :cond_2
    iget-object v0, p1, Lc8/JJd;->data:[B

    iget v1, p1, Lc8/JJd;->pos:I

    iget-object v2, p1, Lc8/JJd;->data:[B

    iget v3, p1, Lc8/JJd;->limit:I

    iget v4, p1, Lc8/JJd;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iget v0, p1, Lc8/JJd;->limit:I

    iget v1, p1, Lc8/JJd;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lc8/JJd;->limit:I

    .line 141
    iput v5, p1, Lc8/JJd;->pos:I

    .line 144
    :cond_3
    iget-object v0, p0, Lc8/JJd;->data:[B

    iget v1, p0, Lc8/JJd;->pos:I

    iget-object v2, p1, Lc8/JJd;->data:[B

    iget v3, p1, Lc8/JJd;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iget v0, p1, Lc8/JJd;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lc8/JJd;->limit:I

    .line 146
    iget v0, p0, Lc8/JJd;->pos:I

    add-int/2addr v0, p2

    iput v0, p0, Lc8/JJd;->pos:I

    .line 147
    return-void
.end method
