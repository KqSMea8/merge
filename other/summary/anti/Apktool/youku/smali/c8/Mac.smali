.class public Lc8/Mac;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lc8/Lac;


# direct methods
.method constructor <init>(Lc8/Lac;)V
    .locals 0

    iput-object p1, p0, Lc8/Mac;->a:Lc8/Lac;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lc8/Mac;->a:Lc8/Lac;

    invoke-virtual {v0}, Lc8/Lac;->dismiss()V

    return-void
.end method
