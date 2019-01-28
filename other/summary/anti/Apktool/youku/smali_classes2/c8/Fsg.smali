.class public Lc8/Fsg;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Gsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 44
    sput-object v0, Lc8/Fsg;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "30000"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lc8/Fsg;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "30001"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lc8/Fsg;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "30002"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lc8/Fsg;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "30003"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lc8/Fsg;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "30004"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lc8/Fsg;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "30005"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lc8/Fsg;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "30006"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lc8/Fsg;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "30007"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lc8/Fsg;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "30008"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lc8/Fsg;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "30009"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lc8/Fsg;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "30010"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lc8/Fsg;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "10002"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lc8/Fsg;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "20001"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method
