.class public final Lc8/oOc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lc8/fOc;

.field final synthetic d:Lc8/hOc;


# direct methods
.method constructor <init>(Lc8/hOc;Ljava/lang/String;ZLc8/fOc;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lc8/oOc;->d:Lc8/hOc;

    iput-object p2, p0, Lc8/oOc;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lc8/oOc;->b:Z

    iput-object p4, p0, Lc8/oOc;->c:Lc8/fOc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lc8/oOc;->d:Lc8/hOc;

    iget-object v1, p0, Lc8/oOc;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lc8/oOc;->b:Z

    invoke-virtual {v0, v1, v2}, Lc8/hOc;->h5Pay(Ljava/lang/String;Z)Lc8/pPc;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lc8/oOc;->c:Lc8/fOc;

    invoke-interface {v1, v0}, Lc8/fOc;->onPayResult(Lc8/pPc;)V

    .line 143
    return-void
.end method
