.class public Lc8/Fac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc8/Dac;


# direct methods
.method constructor <init>(Lc8/Dac;)V
    .locals 0

    iput-object p1, p0, Lc8/Fac;->a:Lc8/Dac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lc8/Fac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->b(Lc8/Dac;)V

    return-void
.end method
