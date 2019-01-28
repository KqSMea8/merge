.class public final Lc8/Xld;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lc8/Wjd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mmd;->newFactory(Lc8/omd;Lc8/Vjd;)Lc8/Wjd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Lc8/omd;

.field final synthetic val$typeAdapter:Lc8/Vjd;


# direct methods
.method constructor <init>(Lc8/omd;Lc8/Vjd;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lc8/Xld;->val$type:Lc8/omd;

    iput-object p2, p0, Lc8/Xld;->val$typeAdapter:Lc8/Vjd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lc8/Gjd;Lc8/omd;)Lc8/Vjd;
    .locals 1
    .param p1, "gson"    # Lc8/Gjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Gjd;",
            "Lc8/omd",
            "<TT;>;)",
            "Lc8/Vjd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 826
    .local p2, "typeToken":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lc8/Xld;->val$type:Lc8/omd;

    invoke-virtual {p2, v0}, Lc8/omd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Xld;->val$typeAdapter:Lc8/Vjd;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
