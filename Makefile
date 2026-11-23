#--------------------COLOR--------------------#

RED=\033[0;31m
GREEN=\033[0;32m
BLUE=\033[0;34m
YELLOW=\033[1;33m
END=\033[0m

#--------------------DIRECT--------------------#

OBJDIR = object
INCLUDE = ./include
LIBFT_DIR = ./libft

#--------------------VARIABLE/FLAGS--------------------#

CC = cc
CFLAGS = -Wall -Wextra -Werror

#---------------------LIBRARIE---------------------#

LIBFT = $(LIBFT_DIR)/libft.a

#--------------------SRC/OBJECT--------------------#

FSRC = ""

OBJ_FILES = $(patsubst src/%.c,$(OBJDIR)/%.o,$(FSRC))
DEP_FILES = $(OBJ_FILES:.o=.d)

#-----------------------RULE-----------------------#

all: $(NAME_LINK)

$(NAME_LINK): $(NEW_LIB)
	@ln -sf $(NEW_LIB) $(NAME_LINK)
	@printf "$(GREEN)$(NAME_LINK) -> $(NEW_LIB) SYMLINK OK$(END)\n"

$(NEW_LIB): $(LIBFT) $(OBJ_FILES)
	@$(CC) $(LDFLAGS) $(OBJ_FILES) $(LIBFT) -o $@
	@printf "$(GREEN)$(NEW_LIB) BUILD OK$(END)\n"

$(LIBFT):
	@$(MAKE) -s -C $(LIBFT_DIR)

$(OBJDIR)/%.o: src/%.c
	@mkdir -p $(dir $@)
	@$(CC) $(CFLAGS) -I $(INCLUDE) -I $(LIBFT_DIR) -c $< -o $@

clean:
	@rm -rf $(OBJDIR)
	@$(MAKE) clean -s -C $(LIBFT_DIR)
	@printf "$(YELLOW)OBJECT CLEAN$(END)\n"

fclean: clean
	@rm -f $(NEW_LIB) $(NAME_LINK)
	@$(MAKE) fclean -s -C $(LIBFT_DIR)
	@printf "$(YELLOW)LIBRARY CLEAN$(END)\n"

re: fclean all

-include $(DEP_FILES)

.PHONY: all clean fclean re