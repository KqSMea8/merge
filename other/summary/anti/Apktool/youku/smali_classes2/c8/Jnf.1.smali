.class public Lc8/Jnf;
.super Ljava/lang/Object;
.source "PolicyConfig.java"

# interfaces
.implements Lc8/Qnf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mnf;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Mnf;


# direct methods
.method constructor <init>(Lc8/Mnf;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lc8/Jnf;->this$0:Lc8/Mnf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "fromCache"    # Z

    .prologue
    .line 143
    const-string/jumbo v0, "flow_customs_config"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lc8/Jnf;->this$0:Lc8/Mnf;

    invoke-static {v0}, Lc8/Mnf;->access$000(Lc8/Mnf;)Ljava/lang/String;

    .line 146
    :cond_0
    return-void
.end method
