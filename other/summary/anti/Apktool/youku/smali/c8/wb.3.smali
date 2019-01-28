.class public Lc8/wb;
.super Ljava/lang/Object;
.source "Snapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vb;
    }
.end annotation


# instance fields
.field private mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/vb;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Lc8/ob;)V
    .locals 6
    .param p1, "widget"    # Lc8/ob;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lc8/wb;->mConnections:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p1}, Lc8/ob;->getX()I

    move-result v4

    iput v4, p0, Lc8/wb;->mX:I

    .line 93
    invoke-virtual {p1}, Lc8/ob;->getY()I

    move-result v4

    iput v4, p0, Lc8/wb;->mY:I

    .line 94
    invoke-virtual {p1}, Lc8/ob;->getWidth()I

    move-result v4

    iput v4, p0, Lc8/wb;->mWidth:I

    .line 95
    invoke-virtual {p1}, Lc8/ob;->getHeight()I

    move-result v4

    iput v4, p0, Lc8/wb;->mHeight:I

    .line 96
    invoke-virtual {p1}, Lc8/ob;->getAnchors()Ljava/util/ArrayList;

    move-result-object v1

    .line 97
    .local v1, "anchors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintAnchor;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "anchorsSize":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 98
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ib;

    .line 99
    .local v0, "a":Lc8/ib;
    iget-object v4, p0, Lc8/wb;->mConnections:Ljava/util/ArrayList;

    new-instance v5, Lc8/vb;

    invoke-direct {v5, v0}, Lc8/vb;-><init>(Lc8/ib;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "a":Lc8/ib;
    :cond_0
    return-void
.end method


# virtual methods
.method public applyTo(Lc8/ob;)V
    .locals 4
    .param p1, "widget"    # Lc8/ob;

    .prologue
    .line 126
    iget v3, p0, Lc8/wb;->mX:I

    invoke-virtual {p1, v3}, Lc8/ob;->setX(I)V

    .line 127
    iget v3, p0, Lc8/wb;->mY:I

    invoke-virtual {p1, v3}, Lc8/ob;->setY(I)V

    .line 128
    iget v3, p0, Lc8/wb;->mWidth:I

    invoke-virtual {p1, v3}, Lc8/ob;->setWidth(I)V

    .line 129
    iget v3, p0, Lc8/wb;->mHeight:I

    invoke-virtual {p1, v3}, Lc8/ob;->setHeight(I)V

    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lc8/wb;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "mConnectionsSize":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 131
    iget-object v3, p0, Lc8/wb;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vb;

    .line 132
    .local v0, "connection":Lc8/vb;
    invoke-virtual {v0, p1}, Lc8/vb;->applyTo(Lc8/ob;)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "connection":Lc8/vb;
    :cond_0
    return-void
.end method

.method public updateFrom(Lc8/ob;)V
    .locals 4
    .param p1, "widget"    # Lc8/ob;

    .prologue
    .line 109
    invoke-virtual {p1}, Lc8/ob;->getX()I

    move-result v3

    iput v3, p0, Lc8/wb;->mX:I

    .line 110
    invoke-virtual {p1}, Lc8/ob;->getY()I

    move-result v3

    iput v3, p0, Lc8/wb;->mY:I

    .line 111
    invoke-virtual {p1}, Lc8/ob;->getWidth()I

    move-result v3

    iput v3, p0, Lc8/wb;->mWidth:I

    .line 112
    invoke-virtual {p1}, Lc8/ob;->getHeight()I

    move-result v3

    iput v3, p0, Lc8/wb;->mHeight:I

    .line 113
    iget-object v3, p0, Lc8/wb;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 114
    .local v1, "connections":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 115
    iget-object v3, p0, Lc8/wb;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vb;

    .line 116
    .local v0, "connection":Lc8/vb;
    invoke-virtual {v0, p1}, Lc8/vb;->updateFrom(Lc8/ob;)V

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "connection":Lc8/vb;
    :cond_0
    return-void
.end method
