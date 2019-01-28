.class public final Lc8/nOc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc8/jOc;


# direct methods
.method constructor <init>(Lc8/jOc;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lc8/nOc;->a:Lc8/jOc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lc8/nOc;->a:Lc8/jOc;

    invoke-static {v0}, Lc8/jOc;->b(Lc8/jOc;)V

    .line 119
    return-void
.end method
