.class public Lc8/vff;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc8/uff;


# direct methods
.method constructor <init>(Lc8/uff;)V
    .locals 0

    iput-object p1, p0, Lc8/vff;->a:Lc8/uff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lc8/vff;->a:Lc8/uff;

    invoke-static {v0}, Lc8/uff;->a(Lc8/uff;)V

    return-void
.end method
