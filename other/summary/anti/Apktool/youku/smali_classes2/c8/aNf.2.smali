.class public abstract Lc8/aNf;
.super Ljava/lang/Object;
.source "MtopBaseListener.java"


# instance fields
.field protected listener:Lc8/QNp;

.field protected mtopBusiness:Lc8/GMf;


# direct methods
.method protected constructor <init>(Lc8/GMf;Lc8/QNp;)V
    .locals 1
    .param p1, "mtopBusiness"    # Lc8/GMf;
    .param p2, "listener"    # Lc8/QNp;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lc8/aNf;->listener:Lc8/QNp;

    .line 13
    iput-object v0, p0, Lc8/aNf;->mtopBusiness:Lc8/GMf;

    .line 20
    iput-object p1, p0, Lc8/aNf;->mtopBusiness:Lc8/GMf;

    .line 21
    iput-object p2, p0, Lc8/aNf;->listener:Lc8/QNp;

    .line 22
    return-void
.end method
