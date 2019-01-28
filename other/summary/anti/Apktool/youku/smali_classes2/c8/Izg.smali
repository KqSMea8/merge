.class public Lc8/Izg;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z

.field public static final d:Z

.field public static e:Z

.field public static final f:Z

.field public static final g:Z

.field private static h:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "@SHIP.TO.2A2FE0D7@"

    const-string/jumbo v3, "2A2FE0D7"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lc8/Izg;->a:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "DEBUG"

    const-string/jumbo v3, "@SHIP.TO.2A2FE0D7@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lc8/Izg;->b:Z

    const-string/jumbo v0, "LOGABLE"

    const-string/jumbo v3, "@SHIP.TO.2A2FE0D7@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lc8/Izg;->c:Z

    const-string/jumbo v0, "@SHIP.TO.2A2FE0D7@"

    const-string/jumbo v3, "YY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lc8/Izg;->d:Z

    const-string/jumbo v0, "@SHIP.TO.2A2FE0D7@"

    const-string/jumbo v3, "TEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lc8/Izg;->e:Z

    const-string/jumbo v0, "BETA"

    const-string/jumbo v3, "@SHIP.TO.2A2FE0D7@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lc8/Izg;->f:Z

    const-string/jumbo v0, "@SHIP.TO.2A2FE0D7@"

    if-eqz v0, :cond_1

    const-string/jumbo v0, "@SHIP.TO.2A2FE0D7@"

    const-string/jumbo v3, "RC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    sput-boolean v1, Lc8/Izg;->g:Z

    sput v2, Lc8/Izg;->h:I

    const-string/jumbo v0, "@SHIP.TO.2A2FE0D7@"

    const-string/jumbo v1, "SANDBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    sput v0, Lc8/Izg;->h:I

    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "@SHIP.TO.2A2FE0D7@"

    const-string/jumbo v1, "ONEBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    sput v0, Lc8/Izg;->h:I

    goto :goto_1

    :cond_4
    sput v2, Lc8/Izg;->h:I

    goto :goto_1
.end method

.method public static a()I
    .locals 1

    sget v0, Lc8/Izg;->h:I

    return v0
.end method
