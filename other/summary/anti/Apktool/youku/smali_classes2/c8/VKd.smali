.class public Lc8/VKd;
.super Ljava/lang/Object;
.source "ReadyRequest.java"


# instance fields
.field private final ids:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final oversize:Z

.field private final request:Lc8/DId;


# direct methods
.method public constructor <init>(ZLc8/DId;Ljava/util/LinkedList;)V
    .locals 0
    .param p1, "oversize"    # Z
    .param p2, "request"    # Lc8/DId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lc8/DId;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p3, "ids":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Lc8/VKd;->oversize:Z

    .line 29
    iput-object p2, p0, Lc8/VKd;->request:Lc8/DId;

    .line 30
    iput-object p3, p0, Lc8/VKd;->ids:Ljava/util/LinkedList;

    .line 31
    return-void
.end method


# virtual methods
.method public getEventIds()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lc8/VKd;->ids:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getRequest()Lc8/DId;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lc8/VKd;->request:Lc8/DId;

    return-object v0
.end method

.method public isOversize()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lc8/VKd;->oversize:Z

    return v0
.end method
